Tiles = {
  EMPTY:  "empty",
  VOID:   "void",
  ROLLER: "roller",
  PUSHER: "pusher",
  GEAR:   "gear",
  REPAIR: "repair",
  OPTION: "option", 
    
  BOARD_WIDTH: 12,
  BOARD_HEIGHT: 16
};

(function (scope) {
  _boards = {
	DEFAULT: 0,
	TEST_BED_1: 1,
  CROSS: 2
  }
  var checkpoints = [];
  
  var _boardCache = [];
  

  scope.getStartPosition = function(players) {
    var game = Games.findOne(players[0].gameId);
    var board = Tiles.getBoard(players.length,game.name);
    console.log("Start tiles"+board.start_tiles[0]);
    for (var i in board.start_tiles) {
      //check if no player is already there
      var start = board.start_tiles[i];
      if (Tiles.isPlayerOnTile(players, start.x, start.y) === null) {
        return start;
      }
    }
    return {x: 0, y: 0, direction: 0};
  };

  scope.checkCheckpoints = function(player,playerCount,boardName) {
    var tile = Tiles.getBoardTile(player.position.x, player.position.y,playerCount,boardName);
    if (tile.checkpoint && tile.checkpoint === player.visited_checkpoints+1) {
      Players.update(player._id, {$set: {visited_checkpoints: tile.checkpoint}});
      return true;
    }
    return false;
  };

  scope.isPlayerOnVoid = function(player,players) {
	var game = Games.findOne(player.gameId);
    var a = Tiles.getBoardTile(player.position.x, player.position.y,players.length,game.name).tileType == Tiles.VOID;
    if (a) {
      console.log("Player fell into the void", player.name);
    }
    return a;
  };

  scope.isPlayerOnBoard = function(player) {
    var a = player.position.x >= 0 && player.position.y >= 0 && player.position.x < Tiles.BOARD_WIDTH && player.position.y < Tiles.BOARD_HEIGHT;
    if (!a) {
      console.log("Player fell off the board", player.name);
    }
    return a;
  };

  scope.isPlayerOnTile = function(players, x, y) {
    var found = null;
    players.forEach(function(player) {
      if (player.position.x == x && player.position.y == y) {
        found = player;
      }
    });
    return found;
  };
  

  scope.canMove = function(x, y, tx, ty,playerCount,gameName) {
    var tile = Tiles.getBoardTile(x, y,playerCount,gameName);
    var targetTile = Tiles.getBoardTile(tx, ty,playerCount,gameName);
    var tileSide = "na";
    var targetTileSide = "na";

    if (x > tx) {
      tileSide = "left";
      targetTileSide = "right";
    } else if (x < tx) {
      tileSide = "right";
      targetTileSide = "left";
    } else if (y > ty) {
      tileSide = "up";
      targetTileSide = "down";
    } else if (y < ty) {
      tileSide = "down";
      targetTileSide = "up";
    }

    if (tile.wall && String(tile.wall).indexOf(tileSide) > -1) {
      return false;
    }
    if (targetTile !== null && targetTile.wall && String(targetTile.wall).indexOf(targetTileSide) > -1) {
      return false;
    }

    return true;
  };


  scope.hasWall = function(x, y, direction, playerCount, gameName) {
    var tile = Tiles.getBoardTile(x, y, playerCount, gameName);
    return (tile.wall && RegExp(direction).test(tile.wall)); 
  };

  scope.getBoardTile = function(x, y, playerCount, boardName) {
    if (x < 0 || y < 0 || x >= Tiles.BOARD_WIDTH || y >= Tiles.BOARD_HEIGHT) {
      console.log("Invalid board tile", x, y);
      return null;
    }
    return Tiles.getBoardTiles(playerCount, boardName)[y][x];
  };
  
  scope.getBoard = function(playerCount, boardName) {
    if (boardName === 'test_bed_1') {
  	  return Tiles.getBoardTEST_BED_1(playerCount);
    } else {
	    return Tiles.getBoardDefault(playerCount);
    }
  }
  
  scope.getBoardTiles = function(playerCount,boardName) {
    if (boardName === 'test_bed_1') {
  	  return Tiles.getBoardTEST_BED_1(playerCount).tiles;
    } else {
	    return Tiles.getBoardDefault(playerCount).tiles;
    }
  };
  scope.getCheckpointCount = function(playerCount, boardName) {
    if (boardName === 'test_bed_1') {
  	  return Tiles.getBoardTEST_BED_1(playerCount).checkpoints.length;
    } else {
	    return Tiles.getBoardDefault(playerCount).checkpoints.length;
    }
  }

  scope.getBoardDefault = function(playerCount) {
    if (typeof _boardCache[_boards.DEFAULT]!=='undefined' && _boardCache[_boards.DEFAULT]!==null) {
      return _boardCache[_boards.DEFAULT];
    }
    var board = BoardBuilder.emptyBoard();
    
    board.setVoid( 9, 2);
    board.setVoid( 1, 4);
    board.setVoid( 2, 4);
    board.setVoid( 5, 4);
    board.setVoid( 4, 5);
    board.setVoid( 5, 5);
    board.setVoid( 6, 5);
    board.setVoid( 5, 6);
    board.setVoid( 9, 8);
    board.setVoid( 2,10);
    board.setVoid( 0,11);
    
    board.setRoller( 1, 0,"drrrrddldldllll");
    board.setRoller( 5, 0,"dd");
    board.setRoller(11, 1,"luu");
    board.setRoller(11, 5,"lllluluuuuu");
    board.setRoller( 0, 6,"rrrrdrddddd");
    board.setRoller( 0, 10,"rdd");
    board.setRoller(10,11,"ulllluuuurrrrrr");
    board.setRoller( 6,11,"uu");
    
    board.setRepair(11, 0);
    board.setRepair( 0, 9);
    
    board.setOption( 2, 3);
    board.setOption( 9, 7);
    
    board.addWall( 2, 0, "up");
    board.addWall( 7, 0, "up");
    board.addWall( 9, 0, "up");
    board.addWall( 0, 2, "left");
    board.addWall(11 ,2, "right");
    board.addWall( 1, 3, "right-down");
    board.addWall( 3, 3, "right");
    board.addWall( 7, 3, "left-down");
    board.addWall( 0, 4, "left");
    board.addWall( 9, 4, "down");
    board.addWall(11, 4, "right");
    board.addWall( 0, 7, "left-down");
    board.addWall( 7, 7, "left-up");
    board.addWall(10, 7, "up");
    board.addWall(11, 7, "right");
    board.addWall( 4, 8, "up");
    board.addWall( 0, 9, "left");
    board.addWall( 2, 9, "right");
    board.addWall( 9,11, "right");
    board.addWall( 2,11, "down");
    board.addWall( 4,11, "down");
    board.addWall( 7,11, "right-down");
    board.addWall( 9,11, "down");
          
    board.addLaser(4, 0, "d", 3);
    board.addLaser(2, 8, "r", 2);
    board.addLaser(7, 8, "r", 2);
    
    board.addDoubleLaser(8, 1, "d", 3);
    
    board.addCheckpoint(7, 3);
    board.addCheckpoint(1, 8);
    board.addCheckpoint(7, 7);
    
    board.addStartArea('simple',0,12);
    _boardCache[_boards.DEFAULT] = board;
    return _boardCache[_boards.DEFAULT];
  };
  

  scope.getBoardTEST_BED_1 = function(playerCount) {
    if (typeof _boardCache[_boards.TEST_BED_1]!=='undefined' && _boardCache[_boards.TEST_BED_1]!==null) {
      return _boardCache[_boards.TEST_BED_1];
    }
    
    var board = new BoardBuilder.Board();		
    board.addStart(0, 0, GameLogic.DOWN);
    board.addStart(11, 11, GameLogic.UP);
    board.addCheckpoint(2, 2);
    board.addCheckpoint(3, 3);

    _boardCache[_boards.TEST_BED_1] = board;
    return _boardCache[_boards.TEST_BED_1];
  };
 
  
})(Tiles);
