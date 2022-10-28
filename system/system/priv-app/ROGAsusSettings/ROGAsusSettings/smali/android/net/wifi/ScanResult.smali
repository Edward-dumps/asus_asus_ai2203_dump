.class public final Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$InformationElement;,
        Landroid/net/wifi/ScanResult$RadioChainInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public anqpDomainId:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public anqpElements:[Landroid/net/wifi/AnqpInformationElement;

.field public anqpLines:Ljava/util/List;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public capabilities:Ljava/lang/String;

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public distanceCm:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public distanceSdCm:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public flags:J
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public frequency:I

.field public hessid:J
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public ifaceName:Ljava/lang/String;

.field public informationElements:[Landroid/net/wifi/ScanResult$InformationElement;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public level:I

.field private mWifiStandard:I

.field public numUsage:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public operatorFriendlyName:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

.field public seen:J
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public timestamp:J

.field public untrusted:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public venueName:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public wifiSsid:Landroid/net/wifi/WifiSsid;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1305
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    .line 1161
    invoke-direct/range {v0 .. v16}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    move-object/from16 v1, p1

    .line 1163
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 3

    move-object v0, p0

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 1134
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object v1, p2

    .line 1135
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-wide v1, p3

    .line 1136
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->hessid:J

    move v1, p5

    .line 1137
    iput v1, v0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    move-object v1, p6

    .line 1138
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move v1, p7

    .line 1139
    iput v1, v0, Landroid/net/wifi/ScanResult;->level:I

    move v1, p8

    .line 1140
    iput v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move-wide v1, p9

    .line 1141
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    move v1, p11

    .line 1142
    iput v1, v0, Landroid/net/wifi/ScanResult;->distanceCm:I

    move v1, p12

    .line 1143
    iput v1, v0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    move/from16 v1, p13

    .line 1144
    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    move/from16 v1, p14

    .line 1145
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    move/from16 v1, p15

    .line 1146
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    if-eqz p16, :cond_0

    const-wide/16 v1, 0x2

    .line 1148
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1150
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    :goto_0
    const/4 v1, 0x0

    .line 1152
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    const/4 v1, 0x0

    .line 1153
    iput v1, v0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/ScanResult;I)I
    .locals 0

    .line 49
    iput p1, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    return p1
.end method

.method private static wifiStandardToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "11ad"

    return-object p0

    :cond_1
    const-string p0, "11ax"

    return-object p0

    :cond_2
    const-string p0, "11ac"

    return-object p0

    :cond_3
    const-string p0, "11n"

    return-object p0

    :cond_4
    const-string p0, "legacy"

    return-object p0

    :cond_5
    const-string p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiStandard()I
    .locals 0

    .line 408
    iget p0, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SSID: "

    .line 1206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1207
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v1, :cond_0

    const-string v1, "<unknown ssid>"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", BSSID: "

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1209
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v2, "<none>"

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", capabilities: "

    .line 1210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", level: "

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", frequency: "

    .line 1214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", timestamp: "

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 1217
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", distance: "

    .line 1218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    const-string v2, "?"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "(cm)"

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ", distanceSd: "

    .line 1220
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    if-eq v4, v3, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", passpoint: "

    .line 1223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1224
    iget-wide v1, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const-string/jumbo v1, "yes"

    goto :goto_2

    :cond_5
    const-string v1, "no"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", ChannelBandwidth: "

    .line 1225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq0: "

    .line 1226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq1: "

    .line 1227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", standard: "

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", 80211mcResponder: "

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1230
    iget-wide v1, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v5, 0x2

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const-string v1, "is supported"

    goto :goto_3

    :cond_6
    const-string v1, "is not supported"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Radio Chain Infos: "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", interface name: "

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1233
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1243
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1244
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1247
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1251
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->hessid:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1252
    iget v0, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1254
    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1257
    iget v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    iget v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    iget v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    iget v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    iget v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    iget v0, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1264
    iget-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    iget v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1268
    iget-wide v3, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1269
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1271
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 1272
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move p2, v1

    .line 1273
    :goto_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 1274
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1278
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    :cond_4
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    if-eqz p2, :cond_5

    .line 1281
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    array-length v0, p2

    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_6

    aget-object v4, p2, v3

    .line 1283
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getVendorId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getElementId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    invoke-virtual {v4}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1289
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    :cond_6
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    if-eqz p2, :cond_7

    .line 1293
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    :goto_5
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    array-length v0, p2

    if-ge v1, v0, :cond_8

    .line 1295
    aget-object p2, p2, v1

    iget p2, p2, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object p2, p2, v1

    iget p2, p2, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1299
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    :cond_8
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
