.class Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$1;
.super Landroid/database/ContentObserver;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;


# direct methods
.method constructor <init>(Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;Landroid/os/Handler;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$1;->this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode$1;->this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;

    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$GloveMode;->refresh()V

    return-void
.end method
