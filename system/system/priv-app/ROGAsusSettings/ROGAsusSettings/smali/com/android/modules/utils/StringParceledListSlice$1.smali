.class Lcom/android/modules/utils/StringParceledListSlice$1;
.super Ljava/lang/Object;
.source "StringParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/StringParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/android/modules/utils/StringParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/modules/utils/StringParceledListSlice;
    .locals 1

    .line 68
    new-instance p0, Lcom/android/modules/utils/StringParceledListSlice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/modules/utils/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/modules/utils/StringParceledListSlice$1;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/modules/utils/StringParceledListSlice;
    .locals 1

    .line 73
    new-instance p0, Lcom/android/modules/utils/StringParceledListSlice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/modules/utils/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/modules/utils/StringParceledListSlice$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/StringParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/modules/utils/StringParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/modules/utils/StringParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/modules/utils/StringParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/modules/utils/StringParceledListSlice;
    .locals 0

    .line 78
    new-array p0, p1, [Lcom/android/modules/utils/StringParceledListSlice;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/StringParceledListSlice$1;->newArray(I)[Lcom/android/modules/utils/StringParceledListSlice;

    move-result-object p0

    return-object p0
.end method
