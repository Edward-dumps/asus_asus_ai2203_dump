.class Lcom/android/settings/MainClear$1;
.super Ljava/lang/Object;
.source "MainClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MainClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MainClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MainClear;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/settings/MainClear$1;->this$0:Lcom/android/settings/MainClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 268
    invoke-static {p1}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {p1}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.action.FACTORY_RESET"

    .line 273
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 274
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MainClear$1;->this$0:Lcom/android/settings/MainClear;

    const/16 v0, 0x37

    invoke-static {p1, v0}, Lcom/android/settings/MainClear;->access$000(Lcom/android/settings/MainClear;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MainClear$1;->this$0:Lcom/android/settings/MainClear;

    invoke-virtual {p1}, Lcom/android/settings/MainClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 285
    iget-object p0, p0, Lcom/android/settings/MainClear$1;->this$0:Lcom/android/settings/MainClear;

    invoke-virtual {p0, p1}, Lcom/android/settings/MainClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object p0, p0, Lcom/android/settings/MainClear$1;->this$0:Lcom/android/settings/MainClear;

    invoke-virtual {p0}, Lcom/android/settings/MainClear;->showFinalConfirmation()V

    :goto_0
    return-void
.end method
