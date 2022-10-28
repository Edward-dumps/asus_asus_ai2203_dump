.class public Lcom/android/settings/contentobserver/GloveModeObserver;
.super Landroid/database/ContentObserver;
.source "GloveModeObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/android/settings/contentobserver/GloveModeObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/contentobserver/GloveModeObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p2, p0, Lcom/android/settings/contentobserver/GloveModeObserver;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/contentobserver/GloveModeObserver;->mCr:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .locals 2

    .line 34
    iget-object p0, p0, Lcom/android/settings/contentobserver/GloveModeObserver;->mCr:Landroid/content/ContentResolver;

    const-string p1, "glove_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 35
    sget-object p1, Lcom/android/settings/contentobserver/GloveModeObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glove_mode is changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
