package android.os;

import android.annotation.SystemApi;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.stream.IntStream;

@SystemApi
/* loaded from: HidlSupport.class */
public class HidlSupport {

    /* loaded from: HidlSupport$Mutable.class */
    public static final class Mutable<E> {
        public E value;

        public Mutable() {
            this.value = null;
        }

        public Mutable(E e) {
            this.value = e;
        }
    }

    @SystemApi
    public static boolean deepEquals(Object obj, Object obj2) {
        Class<?> cls;
        Class<?> cls2;
        boolean z = true;
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null || (cls = obj.getClass()) != (cls2 = obj2.getClass())) {
            return false;
        }
        if (!cls.isArray()) {
            if (!(obj instanceof List)) {
                throwErrorIfUnsupportedType(obj);
                return obj.equals(obj2);
            }
            List list = (List) obj;
            List list2 = (List) obj2;
            if (list.size() != list2.size()) {
                return false;
            }
            final Iterator it = list.iterator();
            return list2.stream().allMatch(new Predicate() { // from class: android.os._$$Lambda$HidlSupport$oV2DlGQSAfcavBj7TK20nYhwS0U
                @Override // java.util.function.Predicate
                public final boolean test(Object obj3) {
                    boolean deepEquals;
                    deepEquals = HidlSupport.deepEquals(it.next(), obj3);
                    return deepEquals;
                }
            });
        }
        Class<?> componentType = cls.getComponentType();
        if (componentType != cls2.getComponentType()) {
            return false;
        }
        if (componentType == null || !componentType.isPrimitive()) {
            final Object[] objArr = (Object[]) obj;
            final Object[] objArr2 = (Object[]) obj2;
            if (objArr.length != objArr2.length || !IntStream.range(0, objArr.length).allMatch(new IntPredicate() { // from class: android.os._$$Lambda$HidlSupport$4ktYtLCfMafhYI23iSXUQOH_hxo
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    boolean deepEquals;
                    deepEquals = HidlSupport.deepEquals(objArr[i], objArr2[i]);
                    return deepEquals;
                }
            })) {
                z = false;
            }
            return z;
        }
        return Objects.deepEquals(obj, obj2);
    }

    @SystemApi
    public static int deepHashCode(Object obj) {
        if (obj == null) {
            return 0;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            return (componentType == null || !componentType.isPrimitive()) ? Arrays.hashCode(Arrays.stream((Object[]) obj).mapToInt(_$$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw.INSTANCE).toArray()) : primitiveArrayHashCode(obj);
        } else if (obj instanceof List) {
            return Arrays.hashCode(((List) obj).stream().mapToInt(_$$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA.INSTANCE).toArray());
        } else {
            throwErrorIfUnsupportedType(obj);
            return obj.hashCode();
        }
    }

    @SystemApi
    public static native int getPidIfSharable();

    @SystemApi
    public static boolean interfacesEqual(IHwInterface iHwInterface, Object obj) {
        if (iHwInterface == obj) {
            return true;
        }
        if (iHwInterface == null || obj == null || !(obj instanceof IHwInterface)) {
            return false;
        }
        return Objects.equals(iHwInterface.asBinder(), ((IHwInterface) obj).asBinder());
    }

    private static int primitiveArrayHashCode(Object obj) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == Boolean.TYPE) {
            return Arrays.hashCode((boolean[]) obj);
        }
        if (componentType == Byte.TYPE) {
            return Arrays.hashCode((byte[]) obj);
        }
        if (componentType == Character.TYPE) {
            return Arrays.hashCode((char[]) obj);
        }
        if (componentType == Double.TYPE) {
            return Arrays.hashCode((double[]) obj);
        }
        if (componentType == Float.TYPE) {
            return Arrays.hashCode((float[]) obj);
        }
        if (componentType == Integer.TYPE) {
            return Arrays.hashCode((int[]) obj);
        }
        if (componentType == Long.TYPE) {
            return Arrays.hashCode((long[]) obj);
        }
        if (componentType == Short.TYPE) {
            return Arrays.hashCode((short[]) obj);
        }
        throw new UnsupportedOperationException();
    }

    private static void throwErrorIfUnsupportedType(Object obj) {
        if (!(obj instanceof Collection) || (obj instanceof List)) {
            if (obj instanceof Map) {
                throw new UnsupportedOperationException("Cannot check equality on maps");
            }
            return;
        }
        throw new UnsupportedOperationException("Cannot check equality on collections other than lists: " + obj.getClass().getName());
    }
}
