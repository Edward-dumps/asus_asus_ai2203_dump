.class Lcom/android/modules/utils/BaseParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/modules/utils/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/modules/utils/BaseParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/android/modules/utils/BaseParceledListSlice;ILjava/lang/Class;I)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    iput p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->access$000()Z

    move-result p2

    const-string p4, " of "

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing more @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    :goto_0
    iget p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->access$200()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    invoke-static {p2}, Lcom/android/modules/utils/BaseParceledListSlice;->access$300(Lcom/android/modules/utils/BaseParceledListSlice;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 186
    iget-object v1, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/modules/utils/BaseParceledListSlice;->access$400(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 187
    iget-object v1, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    iget v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/modules/utils/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 189
    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->access$000()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote extra #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    invoke-static {v2}, Lcom/android/modules/utils/BaseParceledListSlice;->access$300(Lcom/android/modules/utils/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 192
    :cond_3
    iget p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_5

    .line 193
    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->access$000()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Breaking @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x0

    .line 194
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    return v0
.end method
