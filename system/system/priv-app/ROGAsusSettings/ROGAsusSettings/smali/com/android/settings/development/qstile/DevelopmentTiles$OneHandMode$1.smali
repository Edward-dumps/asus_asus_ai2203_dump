.class Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode$1;
.super Landroid/database/ContentObserver;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;Landroid/os/Handler;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode$1;->this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode$1;->this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;

    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$OneHandMode;->refresh()V

    return-void
.end method
