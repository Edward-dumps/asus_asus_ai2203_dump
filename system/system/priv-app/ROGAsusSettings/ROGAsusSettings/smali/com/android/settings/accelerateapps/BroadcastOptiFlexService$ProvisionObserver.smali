.class Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;
.super Landroid/database/ContentObserver;
.source "BroadcastOptiFlexService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;


# direct methods
.method public constructor <init>(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;Landroid/os/Handler;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;->this$0:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;

    .line 36
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->access$000()Z

    move-result p1

    const-string v0, "BroadOptiFlexService"

    if-eqz p1, :cond_0

    const-string p1, "onChange"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;->this$0:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->access$100(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    iget-object p1, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;->this$0:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->access$300(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;->this$0:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->access$200(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;)Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;->this$0:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;

    invoke-virtual {p1}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->onHandleIntent()V

    .line 45
    iget-object p0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;->this$0:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->access$000()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Provision error"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
