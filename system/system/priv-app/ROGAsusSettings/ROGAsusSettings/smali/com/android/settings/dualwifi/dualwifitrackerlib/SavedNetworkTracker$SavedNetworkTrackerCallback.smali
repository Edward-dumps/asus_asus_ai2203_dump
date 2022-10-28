.class public interface abstract Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;
.super Ljava/lang/Object;
.source "SavedNetworkTracker.java"

# interfaces
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SavedNetworkTrackerCallback"
.end annotation


# virtual methods
.method public abstract onSavedDualWifiEntriesChanged()V
.end method

.method public abstract onSubscriptionDualWifiEntriesChanged()V
.end method
