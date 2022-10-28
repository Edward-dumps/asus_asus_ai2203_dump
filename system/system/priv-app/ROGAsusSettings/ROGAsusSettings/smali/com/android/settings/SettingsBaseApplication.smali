.class public Lcom/android/settings/SettingsBaseApplication;
.super Landroid/app/Application;
.source "SettingsBaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;
    }
.end annotation


# instance fields
.field private mDropboxUpdateController:Lcom/android/settings/dropbox/DropboxUpdateController;

.field private mThemeSettingChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsBaseApplication;->mThemeSettingChangedListener:Ljava/util/List;

    return-void
.end method

.method private onThemeChangeToActivity()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/SettingsBaseApplication;->mThemeSettingChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/settings/SettingsBaseApplication;->mThemeSettingChangedListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;

    .line 49
    invoke-interface {v0}, Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;->onThemeChange()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addThemeSettingChangeListener(Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/SettingsBaseApplication;->mThemeSettingChangedListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyThemeChange()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsBaseApplication;->onThemeChangeToActivity()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 27
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    invoke-static {}, Lcom/android/settings/Utils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dropbox/DropboxUpdateController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsBaseApplication;->mDropboxUpdateController:Lcom/android/settings/dropbox/DropboxUpdateController;

    .line 31
    invoke-virtual {v0}, Lcom/android/settings/dropbox/DropboxUpdateController;->setDropboxAlarmSchedule()V

    .line 32
    iget-object v0, p0, Lcom/android/settings/SettingsBaseApplication;->mDropboxUpdateController:Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-virtual {v0}, Lcom/android/settings/dropbox/DropboxUpdateController;->checkInitial()V

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/android/settings/analytics/AnalyticsManager;->start(Landroid/app/Application;)V

    return-void
.end method

.method public removeThemeSettingChangeListener(Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/SettingsBaseApplication;->mThemeSettingChangedListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
