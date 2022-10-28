.class public Lcom/android/settings/contentobserver/ObserverService;
.super Landroid/app/Service;
.source "ObserverService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private gloveModeObserver:Lcom/android/settings/contentobserver/GloveModeObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/android/settings/contentobserver/ObserverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/contentobserver/ObserverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    sget-object v0, Lcom/android/settings/contentobserver/ObserverService;->TAG:Ljava/lang/String;

    const-string v1, "Starting ASUS Settings content observer service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/contentobserver/ObserverService;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/android/settings/contentobserver/GloveModeObserver;

    iget-object v1, p0, Lcom/android/settings/contentobserver/ObserverService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/settings/contentobserver/GloveModeObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/contentobserver/ObserverService;->gloveModeObserver:Lcom/android/settings/contentobserver/GloveModeObserver;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 49
    sget-object v0, Lcom/android/settings/contentobserver/ObserverService;->TAG:Ljava/lang/String;

    const-string v1, "Stopping ASUS Settings content observer service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/settings/contentobserver/ObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/contentobserver/ObserverService;->gloveModeObserver:Lcom/android/settings/contentobserver/GloveModeObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 33
    sget-object p1, Lcom/android/settings/contentobserver/ObserverService;->TAG:Ljava/lang/String;

    const-string p2, "Register content observers"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "glove_mode"

    .line 35
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/android/settings/contentobserver/ObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/contentobserver/ObserverService;->gloveModeObserver:Lcom/android/settings/contentobserver/GloveModeObserver;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return p3
.end method
