.class public Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;
.super Landroid/app/Service;
.source "BluetoothSwitchCodecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;,
        Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;,
        Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;
    }
.end annotation


# static fields
.field private static final BITS_PER_SAMPLES:[I

.field private static final CHANNEL_MODES:[I

.field private static final CODEC_LATENCY_TYPES:[I

.field private static final CODEC_TYPES:[I

.field private static final DEBUG:Z

.field private static final GAME_GENIE_URI:Landroid/net/Uri;

.field private static final RF_SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

.field private static final RF_SOURCE_CODEC_TYPE_APTX_TWSP:I

.field private static final RF_SOURCE_CODEC_TYPE_LDAC:I

.field private static final SAMPLE_RATES:[I


# instance fields
.field private final BATTERY_LEVEL_THRESHOLD:I

.field private final PLAYING_STATES_SWITCH_TIMEOUT:I

.field private mAudioManager:Landroid/media/AudioManager;

.field mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBtSituationReceiver:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;

.field private mCurrentBatteryLevel:I

.field private final mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

.field private mCurrentCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private mPlayMusicTime:J

.field private final mPreviousBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTimer:Ljava/util/Timer;

.field private timeout:J


# direct methods
.method public static synthetic $r8$lambda$CKnAWHIL4PtmcpJ8ylDf2FTdUNE(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->lambda$showEnteringGameToast$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$CXBWUJczt3LZYlhXhQVv6_kcwzg(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->lambda$showCodecToast$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 51
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->DEBUG:Z

    const-string v0, "SOURCE_CODEC_TYPE_APTX_ADAPTIVE"

    .line 58
    invoke-static {v0}, Lcom/android/settingslib/SettingsLibHwSupport;->getBluetoothCodecConfigTypeValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->RF_SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

    const-string v1, "SOURCE_CODEC_TYPE_APTX_TWSP"

    .line 59
    invoke-static {v1}, Lcom/android/settingslib/SettingsLibHwSupport;->getBluetoothCodecConfigTypeValue(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->RF_SOURCE_CODEC_TYPE_APTX_TWSP:I

    const-string v2, "SOURCE_CODEC_TYPE_LDAC"

    .line 60
    invoke-static {v2}, Lcom/android/settingslib/SettingsLibHwSupport;->getBluetoothCodecConfigTypeValue(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->RF_SOURCE_CODEC_TYPE_LDAC:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v5, 0x2

    aput v0, v3, v5

    const/4 v6, 0x3

    aput v6, v3, v6

    const/4 v7, 0x4

    aput v5, v3, v7

    const/4 v8, 0x5

    aput v1, v3, v8

    const/4 v9, 0x6

    aput v4, v3, v9

    .line 62
    sput-object v3, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->CODEC_TYPES:[I

    new-array v3, v8, [I

    aput v0, v3, v4

    aput v5, v3, v1

    aput v6, v3, v5

    aput v2, v3, v6

    aput v4, v3, v7

    .line 70
    sput-object v3, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->CODEC_LATENCY_TYPES:[I

    new-array v0, v9, [I

    .line 76
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->SAMPLE_RATES:[I

    new-array v0, v6, [I

    .line 82
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->BITS_PER_SAMPLES:[I

    new-array v0, v5, [I

    .line 85
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->CHANNEL_MODES:[I

    const-string v0, "content://com.asus.focusapplistener.game.GameAppProvider"

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->GAME_GENIE_URI:Landroid/net/Uri;

    return-void

    :array_0
    .array-data 4
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x1e

    .line 54
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->BATTERY_LEVEL_THRESHOLD:I

    const v0, 0xea60

    .line 56
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->PLAYING_STATES_SWITCH_TIMEOUT:I

    .line 103
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    .line 104
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mPreviousBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mPlayMusicTime:J

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBatteryLevel:I

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 218
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 613
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Ljava/util/List;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->configOverviewProcess(Ljava/util/List;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/media/AudioManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->updateCodecStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBatteryLevel:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBatteryLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mPreviousBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->updateCodecStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;[Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getHighestCodec([Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p0

    return p0
.end method

.method private configOverviewProcess(Ljava/util/List;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)",
            "Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;"
        }
    .end annotation

    .line 722
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 726
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 727
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 728
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    .line 729
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    if-eq v5, v6, :cond_1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    if-eqz v4, :cond_1

    if-eq v4, v6, :cond_1

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    .line 738
    :cond_1
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v4

    .line 739
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->isGameByUID(I)Z

    move-result v3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    move v2, v6

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    :cond_4
    new-instance p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;-><init>(ZZ)V

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current ConfigSummary:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SBtSwitchCodecService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getCodecDisplayName(I)Ljava/lang/String;
    .locals 0

    .line 665
    sget p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->RF_SOURCE_CODEC_TYPE_APTX_TWSP:I

    if-ne p1, p0, :cond_0

    const-string p0, "APTX_TWSP"

    goto :goto_0

    .line 666
    :cond_0
    sget p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->RF_SOURCE_CODEC_TYPE_LDAC:I

    if-ne p1, p0, :cond_1

    const-string p0, "LDAC"

    goto :goto_0

    .line 667
    :cond_1
    sget p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->RF_SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

    if-ne p1, p0, :cond_2

    const-string p0, "APTX_ADAPTIVE"

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    if-ne p1, p0, :cond_3

    const-string p0, "APTX_HD"

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    const-string p0, "APTX"

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    if-ne p1, p0, :cond_5

    const-string p0, "AAC"

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const-string p0, "SBC"

    goto :goto_0

    :cond_6
    const-string p0, "invalid"

    :goto_0
    return-object p0
.end method

.method static getHighestBitsPerSample(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SBtSwitchCodecService"

    const-string v1, "Unable to get highest bits per sample. Config is empty"

    .line 587
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result p0

    .line 591
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->BITS_PER_SAMPLES:[I

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    and-int v5, p0, v4

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static getHighestChannelMode(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SBtSwitchCodecService"

    const-string v1, "Unable to get highest channel mode. Config is empty"

    .line 601
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result p0

    .line 605
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->CHANNEL_MODES:[I

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    and-int v5, p0, v4

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getHighestCodec([Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 8

    const p0, 0xf4240

    if-nez p1, :cond_0

    const-string p1, "SBtSwitchCodecService"

    const-string v0, "Unable to get highest codec. Configs are empty"

    .line 520
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 524
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->CODEC_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 525
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p1, v6

    .line 526
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v7

    if-ne v7, v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method static getHighestSampleRate(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SBtSwitchCodecService"

    const-string v1, "Unable to get highest sample rate. Config is empty"

    .line 573
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 576
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result p0

    .line 577
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->SAMPLE_RATES:[I

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    and-int v5, p0, v4

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getLowestLatencyCodec([Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 8

    const p0, 0xf4240

    if-nez p1, :cond_0

    const-string p1, "SBtSwitchCodecService"

    const-string v0, "Unable to get Lowest Latency codec. Configs are empty"

    .line 504
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 508
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->CODEC_LATENCY_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 509
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p1, v6

    .line 510
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v7

    if-ne v7, v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method private getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 535
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 544
    :cond_2
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 546
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private isGameByUID(I)Z
    .locals 1

    .line 703
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":"

    .line 705
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 707
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->packageIsGame(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$showCodecToast$0(I)V
    .locals 3

    .line 677
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codecType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getCodecDisplayName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showEnteringGameToast$1()V
    .locals 2

    .line 684
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->codec_switch_toast:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private packageIsGame(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 712
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 713
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package info not found for name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SBtSwitchCodecService"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private recordServiceLaunchValue(I)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bt_low_latency_switch"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private sendServiceBroadcast(Ljava/lang/String;)V
    .locals 1

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showCodecToast(I)V
    .locals 2

    .line 675
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 676
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showEnteringGameToast()V
    .locals 2

    .line 682
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 683
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private switchCodec(I)Ljava/lang/Boolean;
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getConfigByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    const-string v1, "SBtSwitchCodecService"

    if-nez v0, :cond_0

    const-string v2, "Selectable config is null. Unable to reset"

    .line 476
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getHighestSampleRate(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setSampleRate(I)V

    .line 479
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getHighestBitsPerSample(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setBitsPerSample(I)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getHighestChannelMode(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setChannelMode(I)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->createCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    .line 482
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 484
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "same codec config, no need to modify codec("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getCodecDisplayName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 488
    :cond_1
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    if-eqz v2, :cond_3

    .line 491
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v2, v0}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set codec to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getCodecDisplayName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->showCodecToast(I)V

    .line 496
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private timeout()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 460
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private updateCodecStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->updateCodecStatus(Z)V

    return-void
.end method

.method private updateCodecStatus(Z)V
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 380
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mPreviousBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMediaPlaying()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "SBtSwitchCodecService"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0xea60

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->timeout:J

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "now:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mTimer:Ljava/util/Timer;

    .line 385
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    invoke-virtual {p1, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    move v0, v2

    goto :goto_0

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mPreviousBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->timeout:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-gez p1, :cond_3

    const-string p1, "need to cancel timer"

    .line 400
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->timeout()V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mPreviousBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    xor-int/lit8 v0, p1, 0x1

    .line 408
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mPreviousBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->copy(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;)V

    if-eqz v0, :cond_4

    return-void

    .line 421
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isGame()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 422
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 423
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 422
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getLowestLatencyCodec([Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p1

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gaming and Music, Attempt to switch codec type for low latency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getCodecDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->switchCodec(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 426
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->showEnteringGameToast()V

    goto/16 :goto_1

    .line 429
    :cond_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isGame()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 430
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 431
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 430
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getLowestLatencyCodec([Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p1

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gaming, Attempt to switch codec type for low latency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getCodecDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->switchCodec(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 434
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->showEnteringGameToast()V

    goto :goto_1

    .line 437
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mCurrentBluetoothDeviceStatus:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 438
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 439
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 438
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getHighestCodec([Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p1

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Music, Attempt to switch codec Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getCodecDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->switchCodec(I)Ljava/lang/Boolean;

    goto :goto_1

    .line 446
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p1, :cond_8

    return-void

    .line 449
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 451
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 450
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getHighestCodec([Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    const-string v1, "default_bt_codec_type"

    .line 449
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore to default codec Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getCodecDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->switchCodec(I)Ljava/lang/Boolean;

    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method protected getConfigByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SBtSwitchCodecService"

    if-nez v0, :cond_0

    const-string p0, "Unable to get selectable config. No active device."

    .line 554
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 557
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Unable to get selectable config. Selectable configs is empty."

    .line 559
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 562
    :cond_1
    array-length v0, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    .line 563
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v5

    if-ne v5, p1, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 567
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find matching codec config, type is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 301
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SBtSwitchCodecService"

    const-string v1, "BluetoothSwitchCodecService onCreate"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;-><init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBtSituationReceiver:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBtSituationReceiver:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mAudioManager:Landroid/media/AudioManager;

    .line 318
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 320
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 325
    :cond_0
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 329
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 334
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "SBtSwitchCodecService"

    const-string v1, "BluetoothSwitchCodecService onDestroy"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->timeout()V

    .line 339
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 342
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 341
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->getHighestCodec([Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    const-string v2, "default_bt_codec_type"

    .line 340
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->switchCodec(I)Ljava/lang/Boolean;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBtSituationReceiver:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 351
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 353
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_2
    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 358
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBtSituationReceiver:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;

    .line 360
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    const-string v0, "ACTION_SERVICE_END"

    .line 362
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->sendServiceBroadcast(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 363
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->recordServiceLaunchValue(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "ACTION_SERVICE_START"

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->sendServiceBroadcast(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->recordServiceLaunchValue(I)V

    return p1
.end method
