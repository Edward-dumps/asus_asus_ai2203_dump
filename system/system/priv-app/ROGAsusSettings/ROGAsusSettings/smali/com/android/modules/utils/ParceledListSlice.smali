.class public Lcom/android/modules/utils/ParceledListSlice;
.super Lcom/android/modules/utils/BaseParceledListSlice;
.source "ParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/android/modules/utils/BaseParceledListSlice<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/modules/utils/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/modules/utils/ParceledListSlice$1;

    invoke-direct {v0}, Lcom/android/modules/utils/ParceledListSlice$1;-><init>()V

    sput-object v0, Lcom/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/modules/utils/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/modules/utils/ParceledListSlice$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/modules/utils/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 50
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-interface {v2}, Landroid/os/Parcelable;->describeContents()I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public bridge synthetic getList()Ljava/util/List;
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/android/modules/utils/BaseParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object p0

    return-object p0
.end method

.method protected writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 57
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 32
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/modules/utils/ParceledListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected bridge synthetic writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Lcom/android/modules/utils/ParceledListSlice;->writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/modules/utils/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
