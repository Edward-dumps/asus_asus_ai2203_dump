.class public interface abstract Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;
.super Ljava/lang/Object;
.source "DualWifiPickerTracker.java"

# interfaces
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DualWifiPickerTrackerCallback"
.end annotation


# virtual methods
.method public abstract onDualWifiEntriesChanged()V
.end method

.method public abstract onNumSavedNetworksChanged()V
.end method

.method public abstract onNumSavedSubscriptionsChanged()V
.end method
