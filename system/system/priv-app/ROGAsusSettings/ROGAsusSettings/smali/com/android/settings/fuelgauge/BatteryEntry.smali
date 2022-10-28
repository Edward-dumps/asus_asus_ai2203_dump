.class public Lcom/android/settings/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;,
        Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sCurrentLocale:Ljava/util/Locale;

.field static sHandler:Landroid/os/Handler;

.field static final sRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field private final mBatteryConsumer:Landroid/os/BatteryConsumer;

.field private mConsumedPower:D

.field private final mConsumerType:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultPackageName:Ljava/lang/String;

.field private final mIsHidden:Z

.field private final mPowerComponentId:I

.field private mTimeInBackgroundMs:J

.field private mTimeInForegroundMs:J

.field private final mUid:I

.field private mUsageDurationMs:J

.field public name:Ljava/lang/String;

.field public percent:D


# direct methods
.method public static synthetic $r8$lambda$CJ5bTATOEdQX9L_qg3nS_QKCIEU(Lcom/android/settings/fuelgauge/BatteryEntry;Lcom/android/settings/fuelgauge/BatteryEntry;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryEntry;->lambda$static$0(Lcom/android/settings/fuelgauge/BatteryEntry;Lcom/android/settings/fuelgauge/BatteryEntry;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 157
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/fuelgauge/BatteryEntry$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IDDJ)V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    const/4 v0, -0x1

    .line 250
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUid:I

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mIsHidden:Z

    .line 252
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mPowerComponentId:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-double/2addr p3, p5

    .line 256
    :goto_0
    iput-wide p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumedPower:D

    .line 257
    iput-wide p7, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUsageDurationMs:J

    const/4 p3, 0x3

    .line 258
    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumerType:I

    .line 260
    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object p2

    .line 261
    iget p3, p2, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->iconId:I

    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 262
    iget-object p2, p2, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 264
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;DD)V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    const/4 v0, -0x1

    .line 273
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUid:I

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mIsHidden:Z

    .line 275
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mPowerComponentId:I

    .line 277
    sget v0, Lcom/android/settings/R$drawable;->ic_power_system:I

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 278
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 279
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-double/2addr p4, p6

    .line 283
    :goto_0
    iput-wide p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumedPower:D

    const/4 p1, 0x3

    .line 284
    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumerType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 188
    invoke-direct/range {v0 .. v9}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    sput-object p2, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 195
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mContext:Landroid/content/Context;

    .line 196
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    .line 197
    iput-boolean p5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mIsHidden:Z

    .line 198
    iput-object p8, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    const/4 p2, -0x1

    .line 199
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mPowerComponentId:I

    .line 201
    instance-of p3, p4, Landroid/os/UidBatteryConsumer;

    if-eqz p3, :cond_3

    .line 202
    iput p6, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUid:I

    const/4 p2, 0x1

    .line 203
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumerType:I

    .line 204
    invoke-virtual {p4}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumedPower:D

    .line 206
    check-cast p4, Landroid/os/UidBatteryConsumer;

    .line 207
    iget-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    const/4 p5, 0x0

    if-nez p3, :cond_1

    if-eqz p7, :cond_0

    .line 209
    array-length p3, p7

    if-ne p3, p2, :cond_0

    .line 210
    aget-object p3, p7, p5

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 215
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 218
    :try_start_0
    iget-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 220
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BatteryEntry"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 227
    :cond_2
    :goto_1
    invoke-virtual {p0, p6, p7, p9}, Lcom/android/settings/fuelgauge/BatteryEntry;->getQuickNameIconForUid(I[Ljava/lang/String;Z)V

    .line 229
    invoke-virtual {p4, p5}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInForegroundMs:J

    .line 231
    invoke-virtual {p4, p2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInBackgroundMs:J

    goto :goto_2

    .line 232
    :cond_3
    instance-of p3, p4, Landroid/os/UserBatteryConsumer;

    if-eqz p3, :cond_4

    .line 233
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUid:I

    const/4 p2, 0x2

    .line 234
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumerType:I

    .line 235
    invoke-virtual {p4}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumedPower:D

    .line 236
    check-cast p4, Landroid/os/UserBatteryConsumer;

    .line 237
    invoke-virtual {p4}, Landroid/os/UserBatteryConsumer;->getUserId()I

    move-result p2

    .line 236
    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object p1

    .line 238
    iget-object p2, p1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 239
    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    :goto_2
    return-void

    .line 241
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported battery consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryEntry;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryEntry;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    return-object p1
.end method

.method public static clearUidCache()V
    .locals 1

    .line 154
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;
    .locals 4

    if-eqz p1, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 637
    const-class p0, Landroid/os/BatteryConsumer;

    const-string v0, "POWER_COMPONENT_"

    invoke-static {p0, v0, p1}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 639
    sget p1, Lcom/android/settings/R$drawable;->ic_wakelock:I

    goto/16 :goto_0

    .line 599
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->ambient_display_screen_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 600
    sget p1, Lcom/android/settings/R$drawable;->ic_settings_aod:I

    goto/16 :goto_0

    .line 620
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_phone:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 621
    sget p1, Lcom/android/settings/R$drawable;->ic_settings_voice_calls:I

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_idle:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 634
    sget p1, Lcom/android/settings/R$drawable;->ic_settings_phone_idle:I

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_camera:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 609
    sget p1, Lcom/android/settings/R$drawable;->ic_settings_camera:I

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->power_bluetooth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "ic_settings_bluetooth"

    const-string v1, "drawable"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    move-object v3, p1

    move p1, p0

    move-object p0, v3

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_wifi:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 629
    sget p1, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    goto :goto_0

    .line 612
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_cell:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 613
    sget p1, Lcom/android/settings/R$drawable;->ic_cellular_1_bar:I

    goto :goto_0

    .line 616
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_flashlight:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 617
    sget p1, Lcom/android/settings/R$drawable;->ic_settings_display:I

    goto :goto_0

    .line 624
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_screen:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 625
    sget p1, Lcom/android/settings/R$drawable;->ic_settings_display:I

    .line 642
    :goto_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNameAndIconFromUid(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;
    .locals 1

    .line 578
    sget v0, Lcom/android/settings/R$drawable;->ic_power_system:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez p2, :cond_0

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->process_kernel_label:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p2, "mediaserver"

    .line 581
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->process_mediaserver_label:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "dex2oat"

    .line 583
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "dex2oat32"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "dex2oat64"

    .line 584
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 585
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->process_dex2oat_label:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 587
    :cond_3
    :goto_0
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object p0
.end method

.method public static getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;
    .locals 2

    .line 558
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 559
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 564
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 565
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->running_process_item_removed_user_label:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 570
    :goto_0
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method private static synthetic lambda$static$0(Lcom/android/settings/fuelgauge/BatteryEntry;Lcom/android/settings/fuelgauge/BatteryEntry;)I
    .locals 2

    .line 158
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static loadNameAndIcon(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;
    .locals 17

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_12

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    goto/16 :goto_c

    .line 358
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v0, 0x3e8

    if-ne v1, v0, :cond_1

    const-string v0, "android"

    .line 361
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_b

    .line 367
    array-length v7, v4

    new-array v8, v7, [Ljava/lang/String;

    .line 368
    array-length v0, v4

    invoke-static {v4, v6, v8, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 372
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object/from16 v11, p4

    move v12, v6

    :goto_1
    const-string v13, ", user "

    const-string v14, "BatteryEntry"

    if-ge v12, v7, :cond_5

    .line 375
    :try_start_0
    aget-object v0, v8, v12

    invoke-interface {v9, v0, v6, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Retrieving null app info for package "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v8, v12

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 382
    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 384
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v12

    .line 386
    :cond_3
    iget v15, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v15, :cond_4

    .line 387
    aget-object v11, v4, v12

    .line 388
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 392
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while retrieving app info for package "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v8, v12

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v6, p6

    :goto_3
    if-ne v7, v5, :cond_6

    const/4 v7, 0x0

    .line 398
    aget-object v0, v8, v7

    move-object v12, v0

    goto/16 :goto_9

    :cond_6
    const/4 v7, 0x0

    .line 401
    array-length v8, v4

    move-object/from16 v12, p5

    move v15, v7

    :goto_4
    if-ge v15, v8, :cond_c

    aget-object v5, v4, v15

    .line 403
    :try_start_1
    invoke-interface {v9, v5, v7, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_7

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieving null package info for package "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 409
    :cond_7
    iget v7, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v7, :cond_9

    move-object/from16 v16, v4

    .line 410
    :try_start_2
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5, v7, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 413
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 414
    :try_start_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_8

    .line 416
    :try_start_4
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v11, v5

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v12, v4

    move-object v11, v5

    goto :goto_7

    :cond_8
    move-object v0, v6

    :goto_5
    move-object v6, v0

    move-object v12, v4

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v12, v4

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v16, v4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 422
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while retrieving package info for package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v6, p6

    .line 429
    :cond_c
    :goto_9
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v12, :cond_f

    const/4 v4, -0x5

    if-eq v1, v4, :cond_e

    const/16 v4, 0x270f

    if-ne v1, v4, :cond_d

    goto :goto_a

    :cond_d
    move-object v12, v0

    goto :goto_b

    .line 434
    :cond_e
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->hotspot_special_uid_app_name:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_f
    :goto_b
    if-nez v6, :cond_10

    .line 439
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 442
    :cond_10
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 443
    iput-object v12, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 444
    iput-object v6, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 445
    iput-object v11, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 447
    sget-object v3, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_11

    move-object/from16 v1, p3

    const/4 v3, 0x1

    .line 449
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 451
    :cond_11
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v11, v6, v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    :cond_12
    :goto_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static startRequestQueue()V
    .locals 3

    .line 127
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 128
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 133
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 135
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 138
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public static stopRequestQueue()V
    .locals 2

    .line 143
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    const/4 v1, 0x0

    .line 146
    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    sput-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 150
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Landroid/os/BatteryConsumer;)V
    .locals 4

    .line 540
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumedPower:D

    invoke-virtual {p1}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumedPower:D

    .line 541
    instance-of v0, p1, Landroid/os/UidBatteryConsumer;

    if-eqz v0, :cond_0

    .line 542
    check-cast p1, Landroid/os/UidBatteryConsumer;

    .line 543
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInForegroundMs:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInForegroundMs:J

    .line 545
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInBackgroundMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInBackgroundMs:J

    .line 547
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 548
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getConsumedPower()D
    .locals 2

    .line 532
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mConsumedPower:D

    return-wide v0
.end method

.method public getDefaultPackageName()Ljava/lang/String;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of v1, v0, Landroid/os/UidBatteryConsumer;

    if-eqz v1, :cond_0

    .line 459
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 460
    :cond_0
    instance-of v0, v0, Landroid/os/UserBatteryConsumer;

    if-eqz v0, :cond_1

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    check-cast p0, Landroid/os/UserBatteryConsumer;

    invoke-virtual {p0}, Landroid/os/UserBatteryConsumer;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 463
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mPowerComponentId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method getQuickNameIconForUid(I[Ljava/lang/String;Z)V
    .locals 3

    .line 311
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    .line 313
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 314
    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 317
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    .line 320
    iget-object p2, p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 321
    iget-object p2, p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 322
    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 326
    array-length p2, p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 327
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getNameAndIconFromUid(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object p1

    .line 328
    iget-object p2, p1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 335
    :goto_1
    sget-object p1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 336
    sget-object p1, Lcom/android/settings/fuelgauge/BatteryEntry;->sRequestQueue:Ljava/util/ArrayList;

    monitor-enter p1

    .line 337
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public getTimeInBackgroundMs()J
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of v0, v0, Landroid/os/UidBatteryConsumer;

    if-eqz v0, :cond_0

    .line 522
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInBackgroundMs:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeInForegroundMs()J
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of v0, v0, Landroid/os/UidBatteryConsumer;

    if-eqz v0, :cond_0

    .line 511
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mTimeInForegroundMs:J

    return-wide v0

    .line 513
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUsageDurationMs:J

    return-wide v0
.end method

.method public getUid()I
    .locals 0

    .line 503
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mUid:I

    return p0
.end method

.method public isAppEntry()Z
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    return p0
.end method

.method public isHidden()Z
    .locals 0

    .line 471
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mIsHidden:Z

    return p0
.end method

.method public isUserEntry()Z
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UserBatteryConsumer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
