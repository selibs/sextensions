package s.extensions;

class MapExt {
	public static inline function isEmpty<L, R>(x:Map<L, R>)
		return [for (k in x.keys()) k].length == 0;
}
