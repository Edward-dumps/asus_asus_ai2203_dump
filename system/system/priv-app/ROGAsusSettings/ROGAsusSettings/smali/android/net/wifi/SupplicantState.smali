.class public final enum Landroid/net/wifi/SupplicantState;
.super Ljava/lang/Enum;
.source "SupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/wifi/SupplicantState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/SupplicantState;

.field public static final enum ASSOCIATED:Landroid/net/wifi/SupplicantState;

.field public static final enum ASSOCIATING:Landroid/net/wifi/SupplicantState;

.field public static final enum AUTHENTICATING:Landroid/net/wifi/SupplicantState;

.field public static final enum COMPLETED:Landroid/net/wifi/SupplicantState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SupplicantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Landroid/net/wifi/SupplicantState;

.field public static final enum DORMANT:Landroid/net/wifi/SupplicantState;

.field public static final enum FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum INACTIVE:Landroid/net/wifi/SupplicantState;

.field public static final enum INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

.field public static final enum INVALID:Landroid/net/wifi/SupplicantState;

.field public static final enum SCANNING:Landroid/net/wifi/SupplicantState;

.field public static final enum UNINITIALIZED:Landroid/net/wifi/SupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 39
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    .line 48
    new-instance v1, Landroid/net/wifi/SupplicantState;

    const-string v3, "INTERFACE_DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    .line 58
    new-instance v3, Landroid/net/wifi/SupplicantState;

    const-string v5, "INACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    .line 66
    new-instance v5, Landroid/net/wifi/SupplicantState;

    const-string v7, "SCANNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    .line 75
    new-instance v7, Landroid/net/wifi/SupplicantState;

    const-string v9, "AUTHENTICATING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    .line 86
    new-instance v9, Landroid/net/wifi/SupplicantState;

    const-string v11, "ASSOCIATING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    .line 96
    new-instance v11, Landroid/net/wifi/SupplicantState;

    const-string v13, "ASSOCIATED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    .line 106
    new-instance v13, Landroid/net/wifi/SupplicantState;

    const-string v15, "FOUR_WAY_HANDSHAKE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 116
    new-instance v15, Landroid/net/wifi/SupplicantState;

    const-string v14, "GROUP_HANDSHAKE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 136
    new-instance v14, Landroid/net/wifi/SupplicantState;

    const-string v12, "COMPLETED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 146
    new-instance v12, Landroid/net/wifi/SupplicantState;

    const-string v10, "DORMANT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    .line 155
    new-instance v10, Landroid/net/wifi/SupplicantState;

    const-string v8, "UNINITIALIZED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    .line 160
    new-instance v8, Landroid/net/wifi/SupplicantState;

    const-string v6, "INVALID"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    const/16 v6, 0xd

    new-array v6, v6, [Landroid/net/wifi/SupplicantState;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 33
    sput-object v6, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    .line 254
    new-instance v0, Landroid/net/wifi/SupplicantState$1;

    invoke-direct {v0}, Landroid/net/wifi/SupplicantState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 1

    .line 33
    const-class v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/SupplicantState;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/SupplicantState;
    .locals 1

    .line 33
    sget-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, [Landroid/net/wifi/SupplicantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/SupplicantState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
