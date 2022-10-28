.class public final Landroid/net/wifi/aware/Characteristics;
.super Ljava/lang/Object;
.source "Characteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/Characteristics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCharacteristics:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Landroid/net/wifi/aware/Characteristics$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/Characteristics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/Characteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    .line 53
    iput-object p1, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 138
    iget-object p0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
