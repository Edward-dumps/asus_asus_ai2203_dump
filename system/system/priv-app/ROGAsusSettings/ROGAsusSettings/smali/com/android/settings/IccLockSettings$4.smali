.class Lcom/android/settings/IccLockSettings$4;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0, p1}, Lcom/android/settings/IccLockSettings;->access$900(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/IccLockSettings;->access$802(Lcom/android/settings/IccLockSettings;I)I

    .line 823
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$000(Lcom/android/settings/IccLockSettings;)V

    .line 824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTabChanged(): mSlotId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IccLockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$1000(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 827
    iget-object p0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p0}, Lcom/android/settings/IccLockSettings;->access$1100(Lcom/android/settings/IccLockSettings;)V

    :cond_0
    return-void
.end method
