.class public Lcom/android/modules/utils/StringParceledListSlice;
.super Lcom/android/modules/utils/BaseParceledListSlice;
.source "StringParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/modules/utils/BaseParceledListSlice<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/modules/utils/StringParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/android/modules/utils/StringParceledListSlice$1;

    invoke-direct {v0}, Lcom/android/modules/utils/StringParceledListSlice$1;-><init>()V

    sput-object v0, Lcom/android/modules/utils/StringParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/modules/utils/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/modules/utils/StringParceledListSlice$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/modules/utils/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

    .line 61
    sget-object p0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    return-object p0
.end method

.method protected bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/modules/utils/StringParceledListSlice;->writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/modules/utils/StringParceledListSlice;->writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void
.end method

.method protected writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/modules/utils/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
