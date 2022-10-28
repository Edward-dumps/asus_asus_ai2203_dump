.class public final Landroid/net/wifi/WifiNetworkSuggestion;
.super Ljava/lang/Object;
.source "WifiNetworkSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isAppInteractionRequired:Z

.field public final isInitialAutoJoinEnabled:Z

.field public final isUserAllowedToManuallyConnect:Z

.field public final isUserInteractionRequired:Z

.field public final passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public final priorityGroup:I

.field public final wifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public static synthetic $r8$lambda$b4_cC2OKWwoeeSfECxVNikVN-Ms(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/wifi/WifiNetworkSuggestion;->lambda$toString$0(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1246
    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSuggestion$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    .line 1220
    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v0, 0x0

    .line 1221
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    .line 1222
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    const/4 v1, 0x1

    .line 1223
    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    .line 1224
    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    .line 1225
    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/hotspot2/PasspointConfiguration;ZZZZI)V
    .locals 0

    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1237
    iput-object p2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1239
    iput-boolean p3, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    .line 1240
    iput-boolean p4, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    .line 1241
    iput-boolean p5, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    .line 1242
    iput-boolean p6, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    .line 1243
    iput p7, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    return-void
.end method

.method private static synthetic lambda$toString$0(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V
    .locals 1

    const-string v0, " "

    .line 1323
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v0

    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->getSecurityTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isAddedByAutoUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "^"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1296
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/WifiNetworkSuggestion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1299
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiNetworkSuggestion;

    .line 1300
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    return v2

    .line 1304
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1305
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1306
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1307
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v3

    .line 1306
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1308
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getPasspointUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1309
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPasspointUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 1308
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    iget-object p1, p1, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v1, v3, :cond_5

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0
.end method

.method public getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 0

    .line 1408
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 1423
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1426
    :cond_0
    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1352
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1285
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 1286
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 1287
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getPasspointUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 1288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 1285
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiNetworkSuggestion[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SSID="

    .line 1317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BSSID="

    .line 1318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", FQDN="

    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SecurityParams="

    .line 1320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getSecurityParamsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiNetworkSuggestion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiNetworkSuggestion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 1322
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string v1, ", isAppInteractionRequired="

    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserInteractionRequired="

    .line 1328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCredentialSharedWithUser="

    .line 1329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInitialAutoJoinEnabled="

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUnTrusted="

    .line 1331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOemPaid="

    .line 1332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOemPrivate="

    .line 1333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCarrierMerged="

    .line 1334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHiddenSsid="

    .line 1335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", priorityGroup="

    .line 1336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionId="

    .line 1337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carrierId="

    .line 1338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", meteredness="

    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    .line 1341
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1274
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1275
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1276
    iget-boolean p2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isAppInteractionRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1277
    iget-boolean p2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserInteractionRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1278
    iget-boolean p2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isUserAllowedToManuallyConnect:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1279
    iget-boolean p2, p0, Landroid/net/wifi/WifiNetworkSuggestion;->isInitialAutoJoinEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1280
    iget p0, p0, Landroid/net/wifi/WifiNetworkSuggestion;->priorityGroup:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
