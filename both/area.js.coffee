class @Area
  @boundaryWalls: () ->
    @addWall 2, 0, 'u'
    @addWall 4, 0, 'u'
    @addWall 7, 0, 'u'
    @addWall 9, 0, 'u'
    @addWall 2, 11, 'd'
    @addWall 4, 11, 'd'
    @addWall 7, 11, 'd'
    @addWall 9, 11, 'd'
    @addWall 0, 2, 'l'
    @addWall 0, 4, 'l'
    @addWall 0, 7, 'l'
    @addWall 0, 9, 'l'
    @addWall 11, 2, 'r'
    @addWall 11, 4, 'r'
    @addWall 11, 7, 'r'
    @addWall 11, 9, 'r'

  @start:

    simple: () ->
      @addWall  2, 0, 'up'
      @addWall  4, 0, 'up'
      @addWall  7, 0, 'up'
      @addWall  9, 0, 'up'
      @addWall  1, 2, 'left'
      @addWall  3, 2, 'left'
      @addWall  5, 2, 'left'
      @addWall  6, 2, 'left'
      @addWall  8, 2, 'left'
      @addWall 10, 2, 'left'
      @addWall 11, 2, 'left'
      @addWall  2, 3, 'down'
      @addWall  4, 3, 'down'
      @addWall  7, 3, 'down'
      @addWall  9, 3, 'down'

      @addStart  5, 2, 'up'
      @addStart  6, 2, 'up'
      @addStart  3, 2, 'up'
      @addStart  8, 2, 'up'
      @addStart  1, 2, 'up'
      @addStart 10, 2, 'up'
      @addStart  0, 2, 'up'
      @addStart 11, 2, 'up'

    anewstart: () ->
      @addWall  3, 0, 'up'
      @addWall  4, 0, 'up'
      @addWall  7, 0, 'up'
      @addWall  8, 0, 'up'

      @addStart  4, 2, 'up'
      @addStart  7, 2, 'up'
      @addStart  3, 2, 'up'
      @addStart  8, 2, 'up'
      @addStart  1, 2, 'up'
      @addStart 10, 2, 'up'
      @addStart  2, 2, 'up'
      @addStart  9, 2, 'up'

    roller: () ->
      @setRoller  0, 2, 'rrdrrr'
      @setRoller 11, 2, 'lldlll'

      @addWall 2, 0, 'up'
      @addWall 4, 0, 'up'
      @addWall 7, 0, 'up'
      @addWall 9, 0, 'up'
      @addWall 4, 0, 'left'
      @addWall 7, 0, 'right'

      @addWall  1, 1, 'left'
      @addWall  2, 1, 'left'
      @addWall 10, 1, 'left'
      @addWall 11, 1, 'left'
      @addWall  8, 2, 'left'
      @addWall  6, 2, 'left'
      @addWall  6, 3, 'left'

      @addStart  5, 3, 'up'
      @addStart  6, 3, 'up'
      @addStart  3, 2, 'up'
      @addStart  8, 2, 'up'
      @addStart  1, 1, 'up'
      @addStart 10, 1, 'up'
      @addStart  0, 0, 'up'
      @addStart 11, 0, 'up'

    roller2: () ->
      @setRoller  0, 2, 'rrdrrr'
      @setRoller 11, 2, 'lldlll'

      @addWall 2, 0, 'up'
      @addWall 4, 0, 'up'
      @addWall 7, 0, 'up'
      @addWall 9, 0, 'up'
      @addWall 4, 0, 'left'
      @addWall 7, 0, 'right'

      @addWall  1, 1, 'left'
      @addWall  2, 1, 'left'
      @addWall 10, 1, 'left'
      @addWall 11, 1, 'left'
      @addWall  8, 2, 'left'
      @addWall  6, 2, 'left'
      @addWall  6, 3, 'left'

      @addStart  5, 2, 'up'
      @addStart  6, 2, 'up'
      @addStart  4, 2, 'up'
      @addStart  7, 2, 'up'
      @addStart  1, 1, 'up'
      @addStart 10, 1, 'up'
      @addStart  0, 0, 'up'
      @addStart 11, 0, 'up'

    roller3: () ->
      @setRoller  0, 2, 'rrdrrr'
      @setRoller 11, 2, 'lldlll'

      @addWall  1, 1, 'left'
      @addWall  2, 1, 'left'
      @addWall 10, 1, 'left'
      @addWall 11, 1, 'left'
      @addWall  6, 2, 'left'
      @addWall  6, 3, 'left'

      @addStart  5, 2, 'up'
      @addStart  6, 2, 'up'
      @addStart  4, 2, 'up'
      @addStart  7, 2, 'up'
      @addStart  1, 1, 'up'
      @addStart 10, 1, 'up'
      @addStart  0, 0, 'up'
      @addStart 11, 0, 'up'

    crowd: () ->
      @addWall  1, 2, 'left'
      @addWall  3, 2, 'left'
      @addWall  5, 2, 'left'
      @addWall  6, 2, 'left'
      @addWall  8, 2, 'left'
      @addWall 10, 2, 'left'
      @addWall 11, 2, 'left'
      @addWall  2, 2, 'left'
      @addWall  4, 2, 'left'
      @addWall  7, 2, 'left'
      @addWall  9, 2, 'left'

      @addStart  5, 2, 'up'
      @addStart  6, 2, 'up'
      @addStart  4, 2, 'up'
      @addStart  7, 2, 'up'
      @addStart  3, 2, 'up'
      @addStart  8, 2, 'up'
      @addStart  2, 2, 'up'
      @addStart  9, 2, 'up'
      @addStart  1, 2, 'up'
      @addStart 10, 2, 'up'
      @addStart  0, 2, 'up'
      @addStart 11, 2, 'up'

    test: () ->
      @addStart 0,0, 'up'
      @addStart 1,0, 'up'
      @addStart 2,0, 'up'
      @addStart 3,0, 'up'
  @course:

    bridge: () ->
      @setExpressRoller 0,4, 'rrrrru'
      @setExpressRoller 11,4, 'lllllu'
      @setExpressRoller 1,0, 'ddddr'
      @setExpressRoller 10,0, 'ddddl'
      @setExpressRoller 1,11, 'uurrrr'
      @setExpressRoller 10,11, 'uullll'
      @setExpressRoller 3,11, 'uur'
      @setExpressRoller 8,11, 'uul'
      @setRoller 5,3, 'uuuu'
      @setRoller 6,3, 'uuuu'
      @setVoid 4, 6,
      @setVoid 4, 7,
      @setVoid 7, 6,
      @setVoid 7, 7,
      @setPusher 0, 0, 'right', 'even'
      @setPusher 11, 0, 'left', 'even'
      @setPusher 0, 11, 'right', 'odd'
      @setPusher 11, 11, 'left', 'odd'
      @setPusher 2, 0, 'down', 'odd'
      @setPusher 3, 0, 'down', 'even'
      @setPusher 8, 0, 'down', 'even'
      @setPusher 9, 0, 'down', 'odd'
      @addLaser 2,5, 'r', 8
      @addLaser 2,8, 'r', 8
      @setOption 3,2
      @setOption 8,2
      @setRepair 4,11
      @setRepair 7,11
      @setRepair 0,6
      @setOption 0,9
      @setOption 11,6
      @setOption 11,9
      @addWall  0, 7, 'up'
      @addWall  1, 7, 'up'
      @addWall  2, 7, 'up'
      @addWall  3, 7, 'up'
      @addWall  8, 7, 'up'
      @addWall  9, 7, 'up'
      @addWall  10, 7, 'up'
      @addWall  11, 7, 'up'     
      Area.boundaryWalls.call(@)

    snake: () ->
      @setExpressRoller 0,11, 'rrrrrrrrrrruullllllllllluurrrrrrrrrrruullllllllllluurrrrrrrrrrruullllllllllluu'
      @setVoid 3, 10,
      @setVoid 0, 10,
      @setVoid 1, 10,
      @setVoid 5, 10,
      @setVoid 6, 10,
      @setVoid 11, 8,
      @setVoid 0, 6,
      @setVoid 5, 0,
      @setVoid 0, 2,
      @setVoid 11, 4,
      @setVoid 2, 6,
      @setVoid 4, 6,
      @setVoid 9, 6,
      @setVoid 8, 8,
      @setVoid 4, 4,
      @setVoid 6, 4,
      @setVoid 10, 2,
      @setGear 3,8, 'ccw'
      @setGear 6,2, 'cw'
      @setPusher 8, 0, 'down', 'even'
      @setPusher 9, 0, 'down', 'odd'
      @setPusher 8, 6, 'left', 'odd'
      @setPusher 9, 10, 'up', 'odd'
      @setPusher 2, 2, 'up', 'odd'
      @setPusher 5, 8, 'up', 'even'
      @setPusher 3, 4, 'left', 'even'
      @setPusher 8, 4, 'left', 'even'
      @setPusher 10, 4, 'right', 'even'
      @setPusher 4, 2, 'up', 'odd'
      @addLaser 7,0, 'd', 12
      @addLaser 2,0, 'd', 12
      @setOption 11,0
      @setOption 1,4
      @setOption 6,6
      @addWall  2, 7, 'right'
      Area.boundaryWalls.call(@)
    rennstrekk: () ->
      @setOption 4,5
      @setOption 6,5
      @setOption 5,5
      @setOption 7,5

    holy_cross: () ->
      @addWall  2, 5, 'down'
      @addWall  1, 5, 'down'
      @addWall  0, 5, 'down'
      @addWall  0, 3, 'up'
      @addWall  1, 3, 'up'
      @addWall  2, 3, 'up'
      @addWall  8, 3, 'up'
      @addWall  9, 3, 'up'
      @addWall  10, 3, 'up'
      @addWall  11, 3, 'up'
      @addWall  8, 5, 'down'
      @addWall  9, 5, 'down'
      @addWall  10, 5, 'down'
      @addWall  11, 5, 'down'
      @addWall  3, 2, 'left'
      @addWall  3, 2, 'up'
      @addWall  7, 2, 'up'
      @addWall  3, 6, 'left'
      @addWall  3, 7, 'left'
      @addWall  3, 8, 'left'
      @addWall  3, 10, 'left'
      @addWall  3, 9, 'left'
      @addWall  4, 1, 'left'
      @addWall  4, 0, 'left'
      @addWall  6, 0, 'right'
      @addWall  6, 1, 'right'
      @addWall  7, 6, 'right'
      @addWall  7, 7, 'right'
      @addWall  7, 8, 'right'
      @addWall  7, 10, 'right'
      @addWall  7, 9, 'right'
      @addWall  7, 2, 'right'
      @setExpressRoller 0,10, 'drrrrr'
      @setExpressRoller 11,10, 'dllllll'
      @setVoid 3, 10,
      @setVoid 7, 10,
      @setRoller 4,10, 'l'
      @setRoller 6,10, 'r'
      @setRoller 4,8, 'r'
      @setRoller 6,8, 'l'
      @setVoid 5, 4,
      @setOption 4,4
      @setOption 6,4
      @setOption 5,3
      @setOption 5,5
      @setExpressRoller 3,4, 'ururrdrddldllulu'
      @addLaser 5,0, 'd', 12 
      @addLaser 0,4, 'r', 12 
      @setRepair 3,2
      @setRepair 3,6
      @setRepair 7,2
      @setRepair 7,6
      @setPusher 8, 5, 'up', 'even'
      @setPusher 1, 5, 'up', 'even'
      @setPusher 11, 4, 'left', 'odd'
      @setGear 8,3, 'ccw'
      @setGear 2,3, 'cw'
    test: () ->
      @setVoid 1,1
      @setRoller 0,3, 'ur'
      @setExpressRoller 3,3, 'uul'
      @setExpressRoller 2,2, 'r'
      @setGear 1,3, 'cw'
      @setGear 2,3, 'ccw'
      @setPusher 1,0, 'down', 'even'
      @setPusher 2,0, 'up', 'odd'
      @setOption 2,1
      @setRepair 0,1
      @addWall 1,2, 'right'
      @addWall 3,0, 'up'
      @addLaser 1,2, 'd', 2
      @addDoubleLaser 0,1, 'r', 1

    schnoi: () ->
      @setVoid 0, 8
      @setVoid 1, 8
      @setVoid 0, 9
      @setVoid 11, 8
      @setVoid 10, 8
      @setVoid 11, 9
      @setVoid 5, 9
      @setVoid 6, 9
      @setVoid 4, 10
      @setVoid 7, 10
      @setVoid 3, 11
      @setVoid 8, 11
      @setVoid 4, 3
      @setVoid 7, 3
      @setVoid 4, 6
      @setVoid 7, 6
      @setOption 5,10
      @setOption 6,10
      @setOption 5,11
      @setOption 6,11
      @setOption 4,11
      @setOption 7,11
      @setRepair 0,4
      @setRepair 11,5
      @addLaser 4,3, 'r', 4
      @addLaser 7,3, 'd', 4
      @addLaser 7,6, 'l', 4
      @addLaser 4,6, 'u', 4
      @setExpressRoller 0,5, 'rrrddrrrrruurrrr'
      @setExpressRoller 11,4, 'llluulllllddllll'

    mind_the_gap: () ->
      @addWall  4, 5, 'left'
      @addWall  4, 6, 'left'
      @addWall  4, 7, 'left'
      @addWall  4, 8, 'left'
      @addWall  4, 11, 'left'
      @addWall  4, 10, 'left'
      @addWall  4, 9, 'left'
      @addWall  7, 5, 'right'
      @addWall  7, 6, 'right'
      @addWall  7, 7, 'right'
      @addWall  7, 8, 'right'
      @addWall  7, 10, 'right'
      @addWall  7, 9, 'right'
      @addWall  7, 11, 'right'
      @setExpressRoller 0,9, 'ddd'
      @setExpressRoller 1,9, 'ddd'
      @setExpressRoller 2,9, 'ddd'
      @setExpressRoller 3,9, 'ddd'
      @setVoid 0, 8,
         
    schnoi2: () ->
      @setVoid 0, 8
      @setVoid 1, 8
      @setVoid 0, 9
      @setVoid 11, 8
      @setVoid 10, 8
      @setVoid 11, 9
      @setVoid 5, 9
      @setVoid 6, 9
      @setVoid 4, 10
      @setVoid 7, 10
      @setVoid 3, 11
      @setVoid 8, 11
      @setRepair 0,4
      @setRepair 11,5
      @setOption 2,8
      @setOption 9,8
      @setOption 5,10
      @setOption 6,10
      @setOption 5,11
      @setOption 6,11
      @setOption 4,11
      @setOption 7,11
      @setExpressRoller 0,5, 'rrrddrrrrruurrr'
      @setExpressRoller 11,4, 'llluulllllddlll'
      @addLaser 3,3, 'r',6
      @addLaser 3,6, 'r',6

    quarterpounder: () ->
      @setVoid 6, 0
      @setVoid 5, 2
      @setVoid 1, 5
      @setVoid 2, 6
      @setVoid 5, 9
      @setVoid 9, 9
      @setVoid 6, 10
      @setRoller 5,1, 'lllldddd'
      @setRoller 2,5, 'uuurrr'
      @setRoller 0,9, 'rr'
      @setRoller 3,9, 'rr'
      @setRoller 2,11, 'uu'
      @setRoller 2,8, 'uu'
      @setRoller 11,1, 'ddddluuuu'
      @setRoller 10,0, 'llll'
      @setRoller 9,1, 'ddddluuuuu'
      @setRoller 7,1, 'ddluuu'
      @setRoller 9,6, 'ddd'
      @setRoller 9,11, 'uu'
      @setRoller 6,9, 'rrr'
      @setRoller 11,9, 'll'
      @setPusher 1,0, 'down', 'even'
      @setPusher 2,0, 'down', 'odd'
      @setRepair  3, 0
      @setOption  0, 2
      @setOption  0, 8
      @setRepair  11, 8
      @setOption  5, 5
      @setOption  6, 6
      @setRepair  5, 6
      @setRepair  6, 5
      @setExpressRoller 5,4, 'rrdddllluuur'
      @addLaser 4, 4, 'r', 4
      @addLaser 7, 7, 'l', 4
      @setGear 2,9, 'cw'
      @addWall  5, 1, 'right'
      @addWall  5, 3, 'right'
      @addWall  5, 8, 'right'
      @addWall  5, 10, 'right'
      @addWall  5, 11, 'right'
      @addWall  0, 5, 'down'
      @addWall  3, 5, 'down'
      @addWall  8, 5, 'down'
      @addWall  9, 5, 'down'
      @addWall  10, 5, 'down'
      @addWall  11, 5, 'down'
      @addWall  0, 0, 'up-left'
      @addWall  11, 0, 'up-right'
      @addWall  11, 11, 'down-right'
      @addWall  0, 11, 'down-left'
      @addWall  5, 11, 'right'
      @addWall  3, 0, 'up'
      @addWall  0, 2, 'left'
      @addWall  0, 8, 'left'
      @addWall  11, 8, 'right'
      @addWall  11, 3, 'right'
      @addWall  11, 2, 'right'
      @addWall  9, 0, 'up'
      Area.boundaryWalls.call(@)

    cross: () ->
      @setVoid 9, 2
      @setVoid 1, 4
      @setVoid 2, 4
      @setVoid 5, 4
      @setVoid 4, 5
      @setVoid 5, 5
      @setVoid 6, 5
      @setVoid 5, 6
      @setVoid 9, 8
      @setVoid 2,10
      @setVoid 0,11

      @setRoller  1, 0, 'drrrrddldldllll'
      @setRoller  5, 0, 'dd'
      @setRoller 11, 1, 'luu'
      @setRoller 11, 5, 'lllluluuuuu'
      @setRoller  0, 6, 'rrrrdrddddd'
      @setRoller  0,10, 'rdd'
      @setRoller 10,11, 'ulllluuuurrrrrr'
      @setRoller  6,11, 'uu'

      @setRepair 11, 0
      @setRepair  0, 9
      @setOption  2, 3
      @setOption  9, 7

      @addWall  1, 3, 'right-down'
      @addWall  3, 3, 'right'
      @addWall  7, 3, 'left-down'
      @addWall  9, 4, 'down'
      @addWall  0, 7, 'down'
      @addWall  7, 7, 'left-up'
      @addWall 10, 7, 'up'
      @addWall  4, 8, 'up'
      @addWall  2, 9, 'right'
      @addWall  9,11, 'right'
      @addWall  7,11, 'right'
      Area.boundaryWalls.call(@)

      @addLaser 4, 0, 'd', 3
      @addLaser 2, 8, 'r', 2
      @addLaser 7, 8, 'r', 2

      @addDoubleLaser 8, 1, 'd', 3

    vault: () ->
      @setVoid  2, 3
      @setVoid  9, 3
      @setVoid  2, 8
      @setVoid  9, 8

      @setRoller 1, 0, 'dll'
      @setRoller 3, 0, 'u'
      @setRoller 9, 0, 'ldlllll'
      @setRoller 8, 0, 'd'
      @setRoller 0, 6, 'rddddrrrrdd'
      @setRoller 8,10, 'rrrr'

      @setExpressRoller  10, 1,'ddrr'
      @setExpressRoller  10, 6,'rr'

      @setRepair  0,11
      @setRepair 11, 0

      @setOption  5, 5
      @setOption  5, 6
      @setOption  6, 5
      @setOption  6, 6

      @setGear  3, 1, 'cw'
      @setGear 10, 0, 'cw'

      @setPusher  5, 2, 'up', 'odd'
      @setPusher 10, 5, 'down', 'even'
      @setPusher  2, 6, 'left', 'odd'
      @setPusher  9, 6, 'right', 'odd'
      @setPusher  5, 9, 'down', 'even'
      @setPusher  6, 9, 'down', 'odd'

      @addWall  6, 2, 'down'
      @addWall 11, 2, 'right'
      @addWall  4, 4, 'left'
      @addWall  7, 4, 'right'
      @addWall  2, 5, 'right'
      @addWall  9, 5, 'left'
      @addWall  3, 7, 'left'
      @addWall  7, 7, 'right'

      @addLaser 4, 0, 'd', 4
      @addLaser 7, 0, 'd', 4
      @addLaser 0, 2, 'r', 4
      @addLaser 4, 8, 'd', 4
      @addLaser 7, 8, 'd', 4

      Area.boundaryWalls.call(@)

    maelstrom: () ->
      @setVoid  5, 5
      @setVoid  6, 5
      @setVoid  5, 6
      @setVoid  6, 6

      @setRoller  1,  0, 'drrrrrrrrrddddddddlllllllluuuuuurrrrrrddddlllluur'
      @setRoller  5,  0, 'dr'
      @setRoller  6,  0, 'u'
      @setRoller 11,  1, 'ld'
      @setRoller 11,  5, 'ld'
      @setRoller  0,  5, 'l'

      @setExpressRoller 10, 11, 'ullllllllluuuuuuuurrrrrrrrddddddlllllluuuurrrrddl'
      @setExpressRoller  6, 11, 'ul'
      @setExpressRoller  0, 10, 'ru'
      @setExpressRoller  0,  6, 'ru'

      @setPusher  4,  0, 'down', 'odd'
      @setPusher  7,  0, 'down', 'odd'
      @setPusher  4, 11, 'up',   'odd'
      @setPusher  7, 11, 'up',   'odd'
      @setPusher 11,  4, 'left', 'odd'
      @setPusher 11,  7, 'left', 'odd'
      @setPusher  0,  4, 'right','odd'
      @setPusher  0,  7, 'right','odd'

      @setPusher  2,  0, 'down', 'even'
      @setPusher  9,  0, 'down', 'even'
      @setPusher  2, 11, 'up',   'even'
      @setPusher  9, 11, 'up',   'even'
      @setPusher 11,  2, 'left', 'even'
      @setPusher 11,  9, 'left', 'even'
      @setPusher  0,  2, 'right','even'
      @setPusher  0,  9, 'right','even'

      @setRepair  0,  0
      @setRepair 11, 11
      @setOption 11,  3
      @setOption  0,  8

      @addLaser 5, 3, 'd', 5
      @addLaser 6, 4, 'd', 5
      @addLaser 4, 5, 'r', 5
      @addLaser 3, 4, 'r', 5

    chess: () ->
      @setVoid 3, 3
      @setVoid 6, 4
      @setVoid 8, 6
      @setVoid 5, 7

      @setExpressRoller 2, 1, 'rrrrrrrrdddddddddllllllllluuuuuuuuurr'
      @setRoller 2, 2, 'r'
      @setRoller 2, 4, 'r'
      @setRoller 2, 6, 'r'
      @setRoller 2, 8, 'r'
      @setRoller 4, 2, 'r'
      @setRoller 4, 4, 'r'
      @setRoller 4, 6, 'r'
      @setRoller 4, 8, 'r'

      @setRoller 3, 5, 'r'
      @setRoller 3, 7, 'r'
      @setRoller 3, 9, 'r'

      @setRoller 5, 3, 'r'
      @setRoller 5, 9, 'r'

      @setRoller 7, 3, 'l'
      @setRoller 7, 5, 'l'
      @setRoller 7, 7, 'l'
      @setRoller 7, 9, 'l'
      @setRoller 9, 3, 'l'
      @setRoller 9, 5, 'l'
      @setRoller 9, 7, 'l'
      @setRoller 9, 9, 'l'

      @setRoller 8, 2, 'l'
      @setRoller 8, 4, 'l'
      @setRoller 8, 8, 'l'

      @setRoller 6, 2, 'l'
      @setRoller 6, 8, 'l'

      @setOption 5, 5
      @setOption 6, 6
      @setRepair 11, 0
      @setRepair  0,11


      @addWall 3, 1, 'd'
      @addWall 5, 1, 'd'
      @addWall 6, 1, 'd'
      @addWall 8, 1, 'd'
      @addWall 3, 10, 'u'
      @addWall 5, 10, 'u'
      @addWall 6, 10, 'u'
      @addWall 8, 10, 'u'
      @addWall 1, 3, 'r'
      @addWall 1, 5, 'r'
      @addWall 1, 6, 'r'
      @addWall 1, 8, 'r'
      @addWall 10, 3, 'l'
      @addWall 10, 5, 'l'
      @addWall 10, 6, 'l'
      @addWall 10, 8, 'l'
      Area.boundaryWalls.call(@)

    spin_zone: () ->
      @setGear 2,2, 'cw'
      @setGear 3,3, 'cw'
      @setGear 2,8, 'cw'
      @setGear 3,9, 'cw'
      @setGear 8,2, 'cw'
      @setGear 9,3, 'cw'
      @setGear 8,8, 'cw'
      @setGear 9,9, 'cw'

      @setGear 5,2, 'ccw'
      @setGear 6,4, 'ccw'
      @setGear 4,5, 'ccw'
      @setGear 9,5, 'ccw'
      @setGear 2,6, 'ccw'
      @setGear 7,6, 'ccw'
      @setGear 5,7, 'ccw'
      @setGear 6,9, 'ccw'

      @setRepair 2,3
      @setRepair 9,8
      @setOption 8,3
      @setOption 3,8

      @setExpressRoller 2,1, 'rrdddllluuurr'
      @setExpressRoller 8,1, 'rrdddllluuurr'
      @setExpressRoller 2,7, 'rrdddllluuurr'
      @setExpressRoller 8,7, 'rrdddllluuurr'

      @addLaser 3,3,'d',4
      @addLaser 5,3,'r',2
      @addLaser 8,5,'d',4
      @addLaser 5,8,'r',2
      Area.boundaryWalls.call(@)
    island: () ->
      @setGear 2,9, 'cw'
      @setGear 9,9, 'cw'

      @setGear 3,3, 'ccw'
      @setGear 3,8, 'ccw'
      @setGear 8,3, 'ccw'
      @setGear 8,8, 'ccw'

      @setRepair 0,11
      @setRepair 11,2
      @setOption 5,6

      @setRoller 3,2, 'rrrrrrr'
      @setRoller 9,3, 'dddddd'
      @setRoller 8,9, 'llllll'
      @setRoller 2,8, 'uuuuuuu'
      @setRoller 7,3, 'llll'
      @setRoller 4,8, 'rrrr'
      @setRoller 3,4, 'dddd'
      @setRoller 5,5, 'lld'
      @setRoller 8,7, 'uuuu'
      @setRoller 6,6, 'rru'

      @setVoid 1,1
      @setVoid 2,1
      @setVoid 1,2
      @setVoid 9,1
      @setVoid 10,1
      @setVoid 10,2
      @setVoid 1,9
      @setVoid 1,10
      @setVoid 2,10
      @setVoid 10,9
      @setVoid 10,10
      @setVoid 9,10
      @setVoid 6,4
      @setVoid 7,4
      @setVoid 7,5
      @setVoid 4,6
      @setVoid 4,7
      @setVoid 5,7
      Area.boundaryWalls.call(@)

    exchange: () ->
      @setGear 10,1, 'cw'
      @setGear 10,10, 'cw'
      @setGear 3,3, 'ccw'
      @setGear 3,8, 'ccw'
      @setGear 8,8, 'ccw'

      @setRepair 0,0
      @setRepair 11,11
      @setOption 7,7

      @setRoller 0,1, 'l'
      @setRoller 0,3, 'rrr'
      @setRoller 4,5, 'lllll'
      @setRoller 11,5, 'lllll'
      @setRoller 1,6, 'rrrr'
      @setRoller 2,8, 'lll'
      @setRoller 3,2, 'uuu'
      @setRoller 3,11, 'uuu'
      @setRoller 5,0, 'ddddd'
      @setRoller 6,4, 'uuuuu'
      @setRoller 6,10, 'uuuu'
      @setRoller 8,0, 'dddd'
      @setRoller 8,9, 'ddd'
      @setRoller 10,0, 'u'
      @setRoller 11,1, 'l'
      @setRoller 11,8, 'lll'
      @setRoller 11,10, 'r'
      @setRoller 10,11, 'u'
      @setExpressRoller 5,7, 'ddddd'
      @setExpressRoller 7,6, 'rrrrr'
      @setExpressRoller 9,3, 'rrr'

      @setVoid 2,1
      @setVoid 0,10

      @addLaser 9,2, 'r', 3
      @addWall 4,4, 'right-down'
      @addWall 4,7, 'up-right'
      @addWall 7,7, 'left-up'
      @addWall 7,4, 'left-down'
      @addWall 1,10, 'down'
      @addWall 10,9, 'up'
      Area.boundaryWalls.call(@)
    chop_shop: () ->
      @setGear 5,3, 'cw'
      @setGear 8,7, 'cw'
      @setGear 5,9, 'cw'
      @setGear 8,3, 'ccw'
      @setGear 4,5, 'ccw'
      @setGear 8,6, 'ccw'
      @setGear 6,9, 'ccw'

      @setRepair 0,11
      @setRepair 11,0
      @setOption 4,2
      @setOption 5,6
      @setOption 9,9

      @setVoid 3,2
      @setVoid 9,2
      @setVoid 6,4
      @setVoid 9,6
      @setVoid 1,10

      @setRoller 1,0, 'ddrr'
      @setRoller 5,0, 'ddd'
      @setRoller 8,0, 'ddd'
      @setRoller 0,3, 'rrr'
      @setRoller 9,3, 'rrr'
      @setRoller 5,4, 'drrr'
      @setRoller 3,5, 'llll'
      @setRoller 4,6, 'u'
      @setRoller 11,8, 'lll'
      @setRoller 5,10, 'dd'
      @setRoller 6,11, 'urrrr'
      @setRoller 11,10, 'r'
      @setExpressRoller 7,8, 'llllllll'
      @setExpressRoller 0,6, 'rrddl'

      @addLaser 4,3, 'r', 3
      @addLaser 10,2, 'd', 3
      @addLaser 1,6, 'd', 3
      @addLaser 2,9, 'r', 6
      @addDoubleLaser 8,5, 'd', 4
      @addLaser 10,10, 'd', 1, 3

      @addWall 6,1, 'r'
      @addWall 5,5, 'd'
      @addWall 3,6, 'right-down'
      Area.boundaryWalls.call(@)
    crowd_chess: () ->
      @setVoid 3, 3
      @setVoid 6, 4
      @setVoid 8, 6
      @setVoid 5, 7

      @setExpressRoller 2, 1, 'rrrrrrrrdddddddddllllllllluuuuuuuuurr'
      @setRoller 2, 2, 'r'
      @setRoller 2, 4, 'r'
      @setRoller 2, 6, 'r'
      @setRoller 2, 8, 'r'
      @setRoller 4, 2, 'r'
      @setRoller 4, 4, 'r'
      @setRoller 4, 6, 'r'
      @setRoller 4, 8, 'r'

      @setRoller 3, 5, 'r'
      @setRoller 3, 7, 'r'
      @setRoller 3, 9, 'r'

      @setRoller 5, 3, 'r'
      @setRoller 5, 9, 'r'

      @setRoller 7, 3, 'l'
      @setRoller 7, 5, 'l'
      @setRoller 7, 7, 'l'
      @setRoller 7, 9, 'l'
      @setRoller 9, 3, 'l'
      @setRoller 9, 5, 'l'
      @setRoller 9, 7, 'l'
      @setRoller 9, 9, 'l'

      @setRoller 8, 2, 'l'
      @setRoller 8, 4, 'l'
      @setRoller 8, 8, 'l'

      @setRoller 6, 2, 'l'
      @setRoller 6, 8, 'l'

      @setOption 5, 5
      @setOption 6, 6
      @setRepair 11, 0
      @setRepair  0,11


      @addWall 3, 1, 'd'
      @addWall 5, 1, 'd'
      @addWall 6, 1, 'd'
      @addWall 8, 1, 'd'
      @addWall 3, 10, 'u'
      @addWall 5, 10, 'u'
      @addWall 6, 10, 'u'
      @addWall 8, 10, 'u'
      @addWall 1, 3, 'r'
      @addWall 1, 5, 'r'
      @addWall 1, 6, 'r'
      @addWall 1, 8, 'r'
      @addWall 10, 3, 'l'
      @addWall 10, 5, 'l'
      @addWall 10, 6, 'l'
      @addWall 10, 8, 'l'

      @addWall 2, 0, 'u'
      @addWall 4, 0, 'u'
      @addWall 7, 0, 'u'
      @addWall 9, 0, 'u'
      @addWall 0, 2, 'l'
      @addWall 0, 4, 'l'
      @addWall 0, 7, 'l'
      @addWall 0, 9, 'l'
      @addWall 11, 2, 'r'
      @addWall 11, 4, 'r'
      @addWall 11, 7, 'r'
      @addWall 11, 9, 'r'

    canner_row: () ->
      @setVoid 6, 0
      @setVoid 5, 2
      @setVoid 9, 8


      @setPusher 5,10, 'right', 'even'
      @setPusher 8,9, 'right', 'odd'
      @setPusher 10,9, 'left', 'even'


      @setExpressRoller 0, 0, 'rrrr'
      @setExpressRoller 11, 0, 'dddddlllll'
      @setExpressRoller 0, 11, 'uuuuurrrr'
      @setExpressRoller 11, 11, 'lllll'
      @setExpressRoller 8, 6, 'rdd'

      @setRoller 4, 0, 'dddddddddddrd'
      @setRoller 5, 0, 'ld'
      @setRoller 5, 4, 'ru'
      @setRoller 5, 5, 'ld'
      @setRoller 5, 6, 'ru'
      @setRoller 5, 7, 'ld'
      @setRoller 11, 10, 'uuuur'

      @setRoller 6, 11, 'uuuuuuuuuuld'

      @setOption 3, 5
      @setOption 9, 10
      @setOption 5, 8
      @setRepair 10, 1
      @setRepair  1, 10


      @addWall 2, 0, 'u'
      @addWall 4, 0, 'u'
      @addWall 7, 0, 'u'
      @addWall 9, 0, 'u'
      @addWall 9, 0, 'd'
      @addWall 10, 0, 'r'

      @addWall 2, 1, 'u'
      @addWall 9, 1, 'r'

      @addWall 0, 2, 'l'
      @addWall 1, 2, 'u'
      @addWall 1, 2, 'r'
      @addWall 2, 2, 'r'
      @addWall 8, 2, 'r'
      @addWall 8, 2, 'l'
      @addWall 11, 2, 'r'

      @addWall 1, 3, 'l'
      @addWall 3, 3, 'r'
      @addWall 5, 3, 'u'
      @addWall 5, 3, 'd'
      @addWall 9, 3, 'u'

      @addWall 0, 4, 'l'
      @addWall 2, 4, 'u'
      @addWall 3, 4, 'd'
      @addWall 10, 4, 'r'
      @addWall 11, 4, 'r'
      @addWall 8, 4, 'u'
      @addWall 10, 4, 'u'

      @addWall 1, 5, 'u'
      @addWall 2, 5, 'd'
      @addWall 8, 5, 'u'
      @addWall 9, 5, 'u'

      @addWall 3, 6, 'd'

      @addWall 0, 7, 'l'
      @addWall 1, 7, 'l'
      @addWall 1, 7, 'u'
      @addWall 2, 7, 'd'
      @addWall 10, 7, 'd'
      @addWall 11, 7, 'r'

      @addWall 2, 8, 'r'
      @addWall 3, 8, 'r'
      @addWall 7, 8, 'd'

      @addWall 0, 9, 'l'
      @addWall 1, 9, 'u'
      @addWall 1, 9, 'r'
      @addWall 3, 9, 'd'
      @addWall 5, 9, 'u'
      @addWall 8, 9, 'l'
      @addWall 9, 9, 'u'
      @addWall 9, 9, 'd'
      @addWall 10, 9, 'r'
      @addWall 11, 9, 'r'

      @addWall 2, 10, 'd'
      @addWall 4, 10, 'l'
      @addWall 8, 10, 'd'
      @addWall 10, 10, 'l'
      @addWall 10, 10, 'd'

      @addWall 2, 11, 'd'
      @addWall 7, 11, 'd'
      @addWall 9, 11, 'd'


      @addDoubleLaser 9, 0, 'd', 1
      @addDoubleLaser 2, 2, 'l', 1
      @addDoubleLaser 8, 2, 'r', 1
      @addLaser 5, 3, 'u', 1
      @addLaser 9, 3, 'd', 2
      @addLaser 2, 4, 'd', 2
      @addLaser 1, 5, 'd', 2
      @addLaser 4, 10, 'l', 1
      @addDoubleLaser 9, 9, 'u', 1


