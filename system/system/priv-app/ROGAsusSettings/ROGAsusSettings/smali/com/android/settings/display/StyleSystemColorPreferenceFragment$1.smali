.class Lcom/android/settings/display/StyleSystemColorPreferenceFragment$1;
.super Ljava/lang/Object;
.source "StyleSystemColorPreferenceFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/StyleSystemColorPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/StyleSystemColorPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/StyleSystemColorPreferenceFragment;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment$1;->this$0:Lcom/android/settings/display/StyleSystemColorPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 408
    sget-object p1, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "com.asus.themeservice is connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment$1;->this$0:Lcom/android/settings/display/StyleSystemColorPreferenceFragment;

    invoke-static {p2}, Lcom/asus/themeservice/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/themeservice/IThemeService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->access$002(Lcom/android/settings/display/StyleSystemColorPreferenceFragment;Lcom/asus/themeservice/IThemeService;)Lcom/asus/themeservice/IThemeService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment$1;->this$0:Lcom/android/settings/display/StyleSystemColorPreferenceFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->access$002(Lcom/android/settings/display/StyleSystemColorPreferenceFragment;Lcom/asus/themeservice/IThemeService;)Lcom/asus/themeservice/IThemeService;

    .line 414
    sget-object p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->TAG:Ljava/lang/String;

    const-string p1, "com.asus.themeservice is disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
