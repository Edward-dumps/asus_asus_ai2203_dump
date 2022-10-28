.class Lcom/android/settings/asusadvancedsettings/SmartVolumeController$2;
.super Ljava/lang/Object;
.source "SmartVolumeController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/asusadvancedsettings/SmartVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/SmartVolumeController;


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/SmartVolumeController;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController$2;->this$0:Lcom/android/settings/asusadvancedsettings/SmartVolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController$2;->this$0:Lcom/android/settings/asusadvancedsettings/SmartVolumeController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->access$002(Lcom/android/settings/asusadvancedsettings/SmartVolumeController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
