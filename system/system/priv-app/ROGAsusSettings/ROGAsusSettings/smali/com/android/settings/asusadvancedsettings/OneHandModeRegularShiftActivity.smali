.class public Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity;
.super Lcom/android/settings/SubSettings;
.source "OneHandModeRegularShiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method

.method public static getScreenHeight(Landroid/content/Context;)F
    .locals 1

    .line 309
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 311
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 312
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 313
    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)F
    .locals 1

    .line 317
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 319
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 320
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 321
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    return p0
.end method

.method public static getSecureFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 0

    .line 325
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static putSecureFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)V
    .locals 0

    .line 329
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 65
    const-class p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isToolbarEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 71
    const-class p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method
