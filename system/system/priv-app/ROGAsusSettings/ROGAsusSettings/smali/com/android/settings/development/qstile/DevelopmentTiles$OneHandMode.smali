.class public Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneHandMode"
.end annotation


# static fields
.field private static SETTINGS_ASUS_ONEHAND:Ljava/lang/String; = "accessibility_onehand_ctrl_enabled"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$w0tF0HMokckzaQBmeTE75RbAH94(Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->lambda$onClick$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 502
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    .line 513
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->mHandler:Landroid/os/Handler;

    .line 514
    new-instance v1, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode$1;-><init>(Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 3

    .line 544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    const-string v2, "com.android.settings.gestures.OneHandedSettings"

    .line 546
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x34008000

    .line 547
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick()V
    .locals 1

    .line 543
    new-instance v0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 523
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 524
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 529
    invoke-super {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->onStartListening()V

    .line 530
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->SETTINGS_ASUS_ONEHAND:Ljava/lang/String;

    .line 531
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 530
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStopListening()V
    .locals 1

    .line 537
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 538
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 565
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->onehand_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 567
    :goto_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 568
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method protected setIsEnabled(Z)V
    .locals 1

    .line 573
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->SETTINGS_ASUS_ONEHAND:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
