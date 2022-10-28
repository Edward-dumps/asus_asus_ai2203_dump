.class Lcom/android/settings/AsusTelephonyUtils$2;
.super Ljava/lang/Object;
.source "AsusTelephonyUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AsusTelephonyUtils;->videoCallingDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/android/settings/AsusTelephonyUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1024
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    iget-object p0, p0, Lcom/android/settings/AsusTelephonyUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
