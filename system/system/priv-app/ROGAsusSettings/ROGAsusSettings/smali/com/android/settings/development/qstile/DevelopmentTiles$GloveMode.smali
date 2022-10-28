.class public Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GloveMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static SETTINGS_ASUS_GLOVE:Ljava/lang/String; = "glove_mode"

.field private static mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 593
    invoke-static {}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->getGloveModeService()Lvendor/ims/glovemode/V1_0/IGloveMode;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 586
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    .line 592
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mHandler:Landroid/os/Handler;

    .line 594
    new-instance v1, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$1;-><init>(Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private static getGloveModeService()Lvendor/ims/glovemode/V1_0/IGloveMode;
    .locals 6

    const-string v0, "getGloveModeService"

    const-string v1, "DevelopmentTiles"

    const/4 v2, 0x1

    .line 659
    :try_start_0
    invoke-static {v2}, Lvendor/ims/glovemode/V1_0/IGloveMode;->getService(Z)Lvendor/ims/glovemode/V1_0/IGloveMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 661
    new-instance v3, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$ServiceDeathRecipient;

    invoke-direct {v3}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$ServiceDeathRecipient;-><init>()V

    const-wide/16 v4, 0x0

    .line 662
    invoke-interface {v2, v3, v4, v5}, Lvendor/ims/glovemode/V1_0/IGloveMode;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 668
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 666
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setGloveModeEnable(I)V
    .locals 2

    const-string v0, "DevelopmentTiles"

    .line 675
    :try_start_0
    sget-object v1, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    if-nez v1, :cond_0

    .line 676
    invoke-static {}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->getGloveModeService()Lvendor/ims/glovemode/V1_0/IGloveMode;

    move-result-object v1

    sput-object v1, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    .line 678
    :cond_0
    sget-object v1, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    if-eqz v1, :cond_1

    .line 679
    invoke-interface {v1, p0}, Lvendor/ims/glovemode/V1_0/IGloveMode;->setEnable(I)V

    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glove status = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    invoke-interface {v1}, Lvendor/ims/glovemode/V1_0/IGloveMode;->getStatus()S

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "setGloveModeEnable"

    .line 683
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 2

    .line 623
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->SETTINGS_ASUS_GLOVE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public onClick()V
    .locals 2

    .line 652
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->setIsEnabled(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->refresh()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 603
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 604
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 609
    invoke-super {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->onStartListening()V

    .line 610
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->SETTINGS_ASUS_GLOVE:Ljava/lang/String;

    .line 611
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 610
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStopListening()V
    .locals 1

    .line 617
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 618
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 637
    :try_start_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->glove_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 639
    :goto_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 640
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GloveMode refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DevelopmentTiles"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected setIsEnabled(Z)V
    .locals 1

    .line 628
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->SETTINGS_ASUS_GLOVE:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    invoke-static {p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->setGloveModeEnable(I)V

    return-void
.end method
