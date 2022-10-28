.class public abstract Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "OneHandedSettings.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/OneHandedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppBarStateChangeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->IDLE:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 276
    iget-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->EXPANDED:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_0

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;)V

    .line 279
    :cond_0
    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 281
    iget-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->COLLAPSED:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_2

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;)V

    .line 284
    :cond_2
    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    goto :goto_0

    .line 286
    :cond_3
    iget-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->IDLE:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_4

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;)V

    .line 289
    :cond_4
    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;->mCurrentState:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method

.method public abstract onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;)V
.end method
