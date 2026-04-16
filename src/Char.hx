package;

using s.extensions.StringExt;

extern abstract Char(Int) from Int to Int {
	@:from
	public static inline function fromString(value:String):Char
		return value.fastCharAt(0);

	@:to
	public inline function toString():String
		return String.fromCharCode(this);

    // unary
    
	@:op(-a)
	inline function neg()
		return -this;

	@:op(++a)
	inline function preincr()
		return ++this;

	@:op(--a)
	inline function predecr()
		return --this;

	@:op(a++)
	inline function postincr() 
		return this++;
	
	@:op(a--)
	inline function postdecr() 
		return this--;
	
    // binary

	@:op(a * b)
	inline function mul(b:Char):Char
		return this * (b : Int);

	@:op(a + b)
	inline function add(b:Char):Char
		return this + (b : Int);

	@:op(a - b)
	inline function sub(b:Char):Char
		return this - (b : Int);

	@:op(a % b)
	inline function mod(b:Char):Char
		return this % (b : Int);

    // comparison
    
	@:op(a == b)
	inline function eq(b:Char):Bool
		return this == (b : Int);

	@:op(a != b)
	inline function neq(b:Char):Bool
		return this != (b : Int);

	@:op(a < b)
	inline function lt(b:Char):Bool
		return this < (b : Int);

	@:op(a <= b)
	inline function lteq(b:Char):Bool
		return this <= (b : Int);

	@:op(a > b)
	inline function gt(b:Char):Bool
		return this > (b : Int);

	@:op(a >= b)
	inline function gteq(b:Char):Bool
		return this >= (b : Int);

    // bitwise

    @:op(~A)
    inline function bitnot():Char
        return ~this;

    @:op(A & B)
    inline function bitand(b:Char):Char
        return this & (b : Int);

    @:op(A | B)
    inline function bitor(b:Char):Char
        return this | (b : Int);

    @:op(A ^ B)
    inline function bitxor(b:Char):Char
        return this ^ (b : Int);

    @:op(A << B)
    inline function lbitshift(b:Char):Char
        return this << (b : Int);

    @:op(A >> B)
    inline function rbitshift(b:Char):Char
        return this >> (b : Int);

    @:op(A >>> B)
    inline function urbitshift(b:Char):Char
        return this >>> (b : Int);

    // assignment

    @:op(A += B)
    inline function addassign(b:Char):Char
        return this += (b : Int);

    @:op(A -= B)
    inline function subassign(b:Char):Char
        return this -= (b : Int);

    @:op(A *= B)
    inline function mulassign(b:Char):Char
        return this *= (b : Int);

    @:op(A %= B)
    inline function modassign(b:Char):Char
        return this %= (b : Int);

    @:op(A &= B)
    inline function andassign(b:Char):Char
        return this &= (b : Int);

    @:op(A |= B)
    inline function orassign(b:Char):Char
        return this |= (b : Int);

    @:op(A ^= B)
    inline function xorassign(b:Char):Char
        return this ^= (b : Int);

    @:op(A <<= B)
    inline function lshiftassign(b:Char):Char
        return this <<= (b : Int);

    @:op(A >>= B)
    inline function rshiftassign(b:Char):Char
        return this >>= (b : Int);

    @:op(A >>>= B)
    inline function urshiftassign(b:Char):Char
        return this >>>= (b : Int);

    // other
    
    @:op(A...B)
    inline function range(b:Char):IntIterator
        return this...(b : Int);
}
