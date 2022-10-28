.class Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccelerateAppsPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->addAppSwitchPreference(Landroid/content/pm/ResolveInfo;Z)V
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

    .line 276
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$2;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$2;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$700(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 284
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 286
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x4

    .line 287
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 289
    iput v2, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 291
    :cond_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 293
    :goto_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$2;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    .line 297
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "app not exisit , "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccelerateAppsPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
