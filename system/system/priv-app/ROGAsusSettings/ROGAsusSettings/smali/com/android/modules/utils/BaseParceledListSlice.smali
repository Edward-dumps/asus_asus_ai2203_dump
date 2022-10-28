.class abstract Lcom/android/modules/utils/BaseParceledListSlice;
.super Ljava/lang/Object;
.source "BaseParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I

.field private static TAG:Ljava/lang/String; = "ParceledListSlice"


# instance fields
.field private mInlineCountLimit:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Lcom/android/modules/utils/BaseParceledListSlice;->MAX_IPC_SIZE:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 13

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 52
    iput v0, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mInlineCountLimit:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 62
    sget-boolean v1, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz v0, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/modules/utils/BaseParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, ": "

    const/4 v6, 0x1

    if-ge v4, v0, :cond_5

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 76
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/android/modules/utils/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_3

    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/modules/utils/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 83
    :goto_1
    iget-object v8, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-boolean v7, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read inline #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-lt v4, v0, :cond_6

    return-void

    .line 91
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_3
    if-ge v4, v0, :cond_a

    .line 93
    sget-boolean v7, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    const-string v8, " of "

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading more @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": retriever="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 96
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :try_start_0
    invoke-interface {p1, v6, v7, v9, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    if-ge v4, v0, :cond_9

    .line 103
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    .line 104
    invoke-direct {p0, v1, v9, p2}, Lcom/android/modules/utils/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v8

    .line 105
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/modules/utils/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 107
    iget-object v10, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-boolean v8, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read extra #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 112
    :cond_9
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_3

    :catch_0
    move-exception p0

    .line 100
    sget-object p1, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure retrieving array; only received "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 40
    sget v0, Lcom/android/modules/utils/BaseParceledListSlice;->MAX_IPC_SIZE:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/modules/utils/BaseParceledListSlice;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/android/modules/utils/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 118
    instance-of p0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz p0, :cond_0

    .line 119
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 121
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in list of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method protected abstract readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
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
.end method

.method protected abstract writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation
.end method

.method protected abstract writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    sget-boolean v1, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_4

    .line 158
    iget-object v1, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 159
    iget-object v3, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/modules/utils/BaseParceledListSlice;->writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 161
    iget v4, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mInlineCountLimit:I

    if-ge v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    sget v5, Lcom/android/modules/utils/BaseParceledListSlice;->MAX_IPC_SIZE:I

    if-ge v4, v5, :cond_2

    const/4 v4, 0x1

    .line 162
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v4, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/modules/utils/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/modules/utils/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 168
    sget-boolean v4, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote inline #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/modules/utils/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ge v3, v0, :cond_4

    .line 172
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    new-instance v2, Lcom/android/modules/utils/BaseParceledListSlice$1;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/android/modules/utils/BaseParceledListSlice$1;-><init>(Lcom/android/modules/utils/BaseParceledListSlice;ILjava/lang/Class;I)V

    .line 199
    sget-boolean p0, Lcom/android/modules/utils/BaseParceledListSlice;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/modules/utils/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Breaking @"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": retriever="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_4
    return-void
.end method
