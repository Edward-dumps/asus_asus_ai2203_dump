.class Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$4;
.super Ljava/lang/Object;
.source "AccelerateAppsPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->loadPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$4;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 475
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 476
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x6

    .line 477
    iput v0, p2, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 479
    iput v0, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 481
    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 483
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$4;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$4;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$000(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "optiflex"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v0
.end method
