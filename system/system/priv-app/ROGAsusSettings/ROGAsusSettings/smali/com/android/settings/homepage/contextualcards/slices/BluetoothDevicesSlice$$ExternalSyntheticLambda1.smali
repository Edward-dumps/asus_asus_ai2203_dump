.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->$r8$lambda$DEw79zK2qANu0IwozcrMQEdliZE(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
