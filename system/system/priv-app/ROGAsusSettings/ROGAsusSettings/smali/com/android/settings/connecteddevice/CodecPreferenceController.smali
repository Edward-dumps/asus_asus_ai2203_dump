.class public Lcom/android/settings/connecteddevice/CodecPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CodecPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final RF_SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

.field private static final TAG:Ljava/lang/String; = "CodecPreferenceController"


# instance fields
.field private final DEBUG:Z

.field private final INTENT_CLS_NAME:Ljava/lang/String;

.field private final INTENT_PKG_NAME:Ljava/lang/String;

.field private final PREFERENCE_KEY:Ljava/lang/String;

.field private isPreferenceNeedToShow:Z

.field private final mBTStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPreference:Landroidx/preference/Preference;

.field private final mTrackEventEvent:Ljava/lang/String;

.field private final mTrackEventKey:Ljava/lang/String;

.field private final mTrackEventValue:Ljava/lang/String;

.field private final redirectIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$SF5tfXBixMY2I9AImvB9JSkv_x4(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->lambda$isValidCodecSupported$0(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aOxg49PFJxAKtURT2uuqeGE8cQg(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->lambda$isValidCodecSupported$1(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SOURCE_CODEC_TYPE_APTX_ADAPTIVE"

    .line 47
    invoke-static {v0}, Lcom/android/settingslib/SettingsLibHwSupport;->getBluetoothCodecConfigTypeValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->RF_SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "onCodecPreferenceClick"

    .line 41
    iput-object p2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mTrackEventEvent:Ljava/lang/String;

    const-string p2, "CodecPreferenceClick"

    .line 42
    iput-object p2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mTrackEventKey:Ljava/lang/String;

    const-string p2, "CodecPreference"

    .line 43
    iput-object p2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mTrackEventValue:Ljava/lang/String;

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->DEBUG:Z

    const-string v0, "codec_preferences"

    .line 48
    iput-object v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->PREFERENCE_KEY:Ljava/lang/String;

    const-string v0, "com.qualcomm.qtil.aptxacu"

    .line 49
    iput-object v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->INTENT_PKG_NAME:Ljava/lang/String;

    const-string v1, "com.qualcomm.qtil.aptxacu.aptxacuSettingsActivity"

    .line 50
    iput-object v1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->INTENT_CLS_NAME:Ljava/lang/String;

    .line 56
    new-instance v2, Lcom/android/settings/connecteddevice/CodecPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/CodecPreferenceController;)V

    iput-object v2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 78
    new-instance v2, Lcom/android/settings/connecteddevice/CodecPreferenceController$2;

    invoke-direct {v2, p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController$2;-><init>(Lcom/android/settings/connecteddevice/CodecPreferenceController;)V

    iput-object v2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->redirectIntent:Landroid/content/Intent;

    .line 115
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 116
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 117
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan30()Z

    move-result v0

    const-string v1, "CodecPreferenceController"

    if-nez v0, :cond_0

    const-string v0, "codec preference is only available for device API Bigger Than 30"

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No application can handle the intent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isHouston()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "codec preference is not available for Houston"

    .line 126
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan30()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 131
    invoke-static {}, Lcom/android/settings/Utils;->isHouston()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->isPreferenceNeedToShow:Z

    return-void
.end method

.method private a2dpServiceConnect(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    .line 281
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->a2dpServiceDisconnect(Landroid/bluetooth/BluetoothAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private a2dpServiceDisconnect(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 289
    invoke-virtual {p1, v1, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/connecteddevice/CodecPreferenceController;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/connecteddevice/CodecPreferenceController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->updateEnableState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/connecteddevice/CodecPreferenceController;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->a2dpServiceDisconnect(Landroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/connecteddevice/CodecPreferenceController;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->updatePreference(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/connecteddevice/CodecPreferenceController;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->a2dpServiceConnect(Landroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method

.method private getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 238
    :cond_2
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 240
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private isValidCodecSupported([Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 6

    .line 208
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/connecteddevice/CodecPreferenceController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/connecteddevice/CodecPreferenceController$$ExternalSyntheticLambda0;

    .line 209
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 213
    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    .line 214
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 217
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/android/settings/connecteddevice/CodecPreferenceController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/connecteddevice/CodecPreferenceController$$ExternalSyntheticLambda1;

    .line 218
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 221
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    .line 222
    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method private static synthetic lambda$isValidCodecSupported$0(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 211
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$isValidCodecSupported$1(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 1

    .line 219
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p0

    sget v0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->RF_SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendAppCenterEvent()V
    .locals 2

    const-string p0, "CodecPreferenceController"

    const-string v0, "sendAppCenterEvent"

    .line 295
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "CodecPreferenceClick"

    const-string v1, "CodecPreference"

    .line 297
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onCodecPreferenceClick"

    .line 298
    invoke-static {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateEnableState()V
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 178
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 184
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->getSelectableConfigs(Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    const-string v4, "CodecPreferenceController"

    if-nez v2, :cond_3

    const-string v0, "BluetoothCodecConfig return null"

    .line 189
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, v1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->updatePreference(Z)V

    return-void

    .line 194
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidCodecSupported:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->isValidCodecSupported([Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 196
    invoke-direct {p0, v2}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->isValidCodecSupported([Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->updatePreference(Z)V

    return-void

    .line 179
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->updatePreference(Z)V

    return-void
.end method

.method private updatePreference(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 203
    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    sget p1, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$string;->radioInfo_data_disconnected:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 152
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->updateEnableState()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is Codec PreferenceNeedToShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->isPreferenceNeedToShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->isPreferenceNeedToShow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "codec_preferences"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 157
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 162
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->sendAppCenterEvent()V

    .line 164
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->redirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 167
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No application can handle the intent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->redirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CodecPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "CodecPreferenceController"

    const-string v0, "onCreate"

    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-boolean p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->isPreferenceNeedToShow:Z

    if-nez p1, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->a2dpServiceConnect(Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->updateEnableState()V

    .line 259
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 260
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CodecPreferenceController"

    const-string v1, "onDestroy"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->isPreferenceNeedToShow:Z

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->a2dpServiceDisconnect(Landroid/bluetooth/BluetoothAdapter;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
