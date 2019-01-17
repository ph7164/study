// switch 문

enum Blood{
    case A
    case B
    case O
    case AB
}

var myBlood = Blood.B
switch myBlood{
case .A:
    print("A형")
case .B:
    print("B형")
case .O:
    print("O형")
case .AB:
    print("AB형")
}

var score = (2,2)
switch score{
case (1,1):
    print("1,1")
case (1,2):
    print("1,2")
case (2,_):
    print("2,_")
default:
    print("unknown")
}

switch score{
case (1,let y):
    print("1, \(y)")
case (2, let y):
    print("2, \(y)")
case (let x, let y):
    print("\(x), \(y)")
}

switch score{
case let(x,y) where x>0:
    print("x>0, \(x), \(y)")
case let (x,y) where x<=0:
    print("x<=0, \(x), \(y)")
default:
    print("unknown")
}
