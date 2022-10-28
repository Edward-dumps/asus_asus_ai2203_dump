.class public Lcom/android/settings/display/FrameRateLayoutPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FrameRateLayoutPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;
    }
.end annotation


# static fields
.field public static final ALLOWED_MODES_ROG3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALLOWED_MODES_ROG5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTO_MODE_MAPPING:Landroid/util/SparseIntArray;

.field public static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0xea60

.field public static final FRAME_RATE_CONTROL_MODE:Ljava/lang/String; = "frame_rate_control_mode"

.field public static final FRAME_RATE_VALUE:Ljava/lang/String; = "frame_rate_value"

.field static final KEY_FRAME_RATE_LAYOUT:Ljava/lang/String; = "key_frame_rate_layout"

.field public static final MODE_AUTO:I = 0x7

.field public static final MODE_BATTERY:I = 0x8

.field public static final MODE_BATTERY_AUTO:I = 0xc

.field public static final MODE_USER:I = 0x3

.field private static final POWERSAVER_CLASSNAME:Ljava/lang/String; = "com.asus.powersaver.PowerSaverService"

.field private static final POWERSAVER_PACKAGENAME:Ljava/lang/String; = "com.asus.powersaver"

.field public static final PROPERTY_DFPS:Ljava/lang/String; = "sys.asus.dfps"

.field public static final PROPERTY_DFPS_YODA:Ljava/lang/String; = "vendor.asus.dfps"

.field public static final REMOTE_SERVICE_BIND_ACTION:Ljava/lang/String; = "com.asus.hardwarestub.centralcontrol.fpscentralcontrolservice"

.field public static final REMOTE_SERVICE_CLASSNAME:Ljava/lang/String; = "com.asus.hardwarestub.centralcontrol.FPSCentralControlService"

.field public static final REMTOE_SERVICE_PACKAGENAME:Ljava/lang/String; = "com.asus.hardwarestub"

.field private static final SETTINGS_GLOBAL_FRAME_RATE_CTRL_MODE:Ljava/lang/String; = "frame_rate_control_mode"

.field public static final TAG:Ljava/lang/String; = "FrameRatePreference"

.field public static fpsEntries:[Ljava/lang/String;

.field public static fpsValues:[Ljava/lang/String;


# instance fields
.field private RESOLVER:Landroid/content/ContentResolver;

.field private frameRateListview:Landroid/widget/ListView;

.field private framerate_entries:[Ljava/lang/String;

.field private framerate_values:[Ljava/lang/String;

.field private mAdapter:Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFrameRateControlModeObserver:Landroid/database/ContentObserver;

.field private mFrameRateValueObserver:Landroid/database/ContentObserver;

.field private mHasInit:Z

.field private mIsSupportSystemMode:Z

.field private mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mPowerSaverService:Landroid/os/IBinder;

.field private mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x7

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v3, 0x8

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/16 v3, 0xc

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const/4 v3, 0x3

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->ALLOWED_MODES_ROG3:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v1, v0, v2

    aput-object v6, v0, v4

    .line 116
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->ALLOWED_MODES_ROG5:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->AUTO_MODE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 131
    sput-object v0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsEntries:[Ljava/lang/String;

    .line 132
    sput-object v0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "FrameRatePreference"

    const-string v1, "com.asus.powersaver"

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 103
    iput-boolean p2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mHasInit:Z

    const/4 v2, 0x0

    .line 104
    iput-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    .line 105
    iput-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mPowerSaverService:Landroid/os/IBinder;

    .line 127
    sget-object v2, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->AUTO_MODE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x3

    const/4 v4, 0x7

    .line 128
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    new-instance v2, Lcom/android/settings/display/FrameRateLayoutPreferenceController$3;

    new-instance v3, Landroid/os/Handler;

    .line 242
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$3;-><init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mFrameRateControlModeObserver:Landroid/database/ContentObserver;

    .line 250
    new-instance v2, Lcom/android/settings/display/FrameRateLayoutPreferenceController$4;

    new-instance v3, Landroid/os/Handler;

    .line 251
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$4;-><init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    .line 323
    new-instance v2, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;

    invoke-direct {v2, p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;-><init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V

    iput-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    .line 139
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    .line 140
    iput-boolean p2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mIsSupportSystemMode:Z

    const/4 v2, 0x4

    .line 142
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "support_system_mode"

    const-string v4, "bool"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mIsSupportSystemMode:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    iput-boolean p2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mIsSupportSystemMode:Z

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.asus.powersaver resource support_system_mode not found"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.asus.powersaver not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/widget/ListView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->frameRateListview:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)[Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->framerate_values:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->setListviewSetPosition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->reloadFPS()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mPowerSaverService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mIsSupportSystemMode:Z

    return p0
.end method

.method public static bindFPSControlService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.hardwarestub.centralcontrol.fpscentralcontrolservice"

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.asus.hardwarestub"

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 304
    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BindTest SecurityException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameRatePreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static bindPowerSaverService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 4

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.powersaver"

    const-string v3, "com.asus.powersaver.PowerSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 316
    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BindTest SecurityException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameRatePreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getBatteryMode()I
    .locals 6

    .line 382
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mPowerSaverService:Landroid/os/IBinder;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 386
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "com.asus.mobilemanager.powersaver.IPowerSaverManager"

    .line 390
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mPowerSaverService:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 392
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 393
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v3, "FrameRatePreference"

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get battery mode failed, err: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    .line 398
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw p0
.end method

.method private getModeName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->system_mode_advanced:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 473
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->system_mode_extreme_power_saving_v2:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 470
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->system_mode_durable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 467
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->system_mode_dynamic:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 464
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->power_master_battery_modes_custom:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 461
    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->power_master_battery_modes_custom:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 458
    :pswitch_7
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->battery_modes_high_performance:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 455
    :pswitch_8
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->service_mode_item_title_smart_saving:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 452
    :pswitch_9
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->power_master_battery_modes_balance:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 449
    :pswitch_a
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->service_mode_item_title_ultra_saving:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static loadEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 483
    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->loadFromDisplayManager(Landroid/content/Context;)V

    .line 484
    sget-object p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public static loadFromDisplayManager(Landroid/content/Context;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "display"

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 497
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/Integer;

    move v3, v1

    .line 498
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 499
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FrameRatePreference"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 505
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsEntries:[Ljava/lang/String;

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/settings/R$string;->refresh_rate_auto:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    move p0, v1

    .line 507
    :goto_1
    array-length v3, v0

    if-ge p0, v3, :cond_2

    .line 508
    sget-object v3, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsEntries:[Ljava/lang/String;

    add-int/lit8 v4, p0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, v2, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Hz"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    move p0, v4

    goto :goto_1

    .line 511
    :cond_2
    array-length p0, v0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    sput-object p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsValues:[Ljava/lang/String;

    const-string v3, "0"

    .line 512
    aput-object v3, p0, v1

    .line 513
    :goto_2
    array-length p0, v0

    if-ge v1, p0, :cond_3

    .line 514
    sget-object p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsValues:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v3

    move v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static loadValues(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 488
    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->loadFromDisplayManager(Landroid/content/Context;)V

    .line 489
    sget-object p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->fpsValues:[Ljava/lang/String;

    return-object p0
.end method

.method private reloadFPS()V
    .locals 4

    const-string v0, "FrameRatePreference"

    .line 266
    invoke-static {}, Lcom/android/settings/Utils;->isTequila()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->ALLOWED_MODES_ROG3:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->ALLOWED_MODES_ROG5:Ljava/util/List;

    .line 269
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->frameRateListview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;

    if-eqz v2, :cond_2

    .line 270
    iget-object v3, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    if-eqz v3, :cond_2

    .line 271
    invoke-interface {v3}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentMode()I

    move-result v3

    .line 272
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->setEnabled(Z)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    const-string v2, "frame_rate_control_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "_AUTO"

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    .line 275
    invoke-direct {p0, v1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->setListviewSetPosition(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v1}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->setListviewSetPosition(Ljava/lang/String;)V

    .line 279
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v2}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {p0}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private reloadSystemMode()V
    .locals 6

    const-string v0, "FrameRatePreference"

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->getBatteryMode()I

    move-result v1

    .line 433
    invoke-direct {p0, v1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 435
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->asus_display_current_system_mode:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 436
    invoke-virtual {v2, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 435
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get System mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 440
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private saveBatteryModeRefreshRate(I)V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mPowerSaverService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->getBatteryMode()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 413
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "com.asus.mobilemanager.powersaver.IPowerSaverManager"

    .line 416
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 417
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mPowerSaverService:Landroid/os/IBinder;

    const/16 p1, 0x86

    const/4 v0, 0x0

    invoke-interface {p0, p1, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 421
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "FrameRatePreference"

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save battery mode fps failed, err: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 425
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    throw p0
.end method

.method private setListviewSetPosition(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->framerate_entries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->framerate_values:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->frameRateListview:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mAdapter:Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->setCheckedIndex(I)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mAdapter:Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_frame_rate_layout"

    .line 158
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 160
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->loadEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->framerate_entries:[Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->loadValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->framerate_values:[Ljava/lang/String;

    .line 163
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->footer:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x1020016

    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LinkTextView;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->refresh_rate_hint3:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->refresh_rate_hint4:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget v0, Lcom/android/settings/R$id;->settingslib_learn_more:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LinkTextView;

    const/16 v0, 0x8

    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    new-instance v6, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->framerate_entries:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    new-instance p1, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$layout;->simple_list_item_single_choice_framerate:I

    const v5, 0x1020014

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;-><init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/content/Context;IILjava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mAdapter:Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;

    .line 183
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->list:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->frameRateListview:Landroid/widget/ListView;

    .line 184
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->framerate_entries:[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x44

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->frameRateListview:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mAdapter:Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->frameRateListview:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;-><init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->frameRateListview:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;-><init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 211
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->bindFPSControlService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->bindPowerSaverService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 214
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    const-string v0, "frame_rate_control_mode"

    .line 216
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mFrameRateControlModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 215
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 220
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    const-string v0, "frame_rate_value"

    .line 221
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    .line 220
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mHasInit:Z

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mPowerSaverService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mFrameRateControlModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFpsByService(I)V
    .locals 6

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFpsByService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameRatePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v0}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentMode()I

    move-result v0

    const/4 v2, 0x3

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_1

    :cond_0
    move v2, v3

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v0, v2, p1}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->setFPS(II)V

    if-eqz p1, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    sget-object v4, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->AUTO_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-interface {v0, v4, v5}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->setFPS(II)V

    :cond_2
    if-ne v2, v3, :cond_3

    .line 373
    invoke-direct {p0, p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->saveBatteryModeRefreshRate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
