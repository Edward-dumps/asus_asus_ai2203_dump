.class Lcom/android/settings/development/DesktopModePreferenceController$EnableDialog;
.super Ljava/lang/Object;
.source "DesktopModePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DesktopModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DesktopModePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/development/DesktopModePreferenceController;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/android/settings/development/DesktopModePreferenceController$EnableDialog;->this$0:Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {p1}, Lcom/android/settings/development/DesktopModePreferenceController;->access$100(Lcom/android/settings/development/DesktopModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x1040014

    .line 95
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->asus_development_force_desktop_content:I

    .line 96
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 97
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/development/DesktopModePreferenceController;Lcom/android/settings/development/DesktopModePreferenceController$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/development/DesktopModePreferenceController$EnableDialog;-><init>(Lcom/android/settings/development/DesktopModePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/development/DesktopModePreferenceController$EnableDialog;->this$0:Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/DesktopModePreferenceController;->access$200(Lcom/android/settings/development/DesktopModePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "force_desktop_mode_on_external_displays"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/android/settings/development/DesktopModePreferenceController$EnableDialog;->this$0:Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/DesktopModePreferenceController;->access$300(Lcom/android/settings/development/DesktopModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_desktop_mode_on_external_displays"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 114
    iget-object p0, p0, Lcom/android/settings/development/DesktopModePreferenceController$EnableDialog;->this$0:Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/DesktopModePreferenceController;->access$400(Lcom/android/settings/development/DesktopModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
