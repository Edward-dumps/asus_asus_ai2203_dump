.class Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;
.super Landroid/os/Handler;
.source "AccelerateAppsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "pref_optiflex_select_over_a_num"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 209
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getSelectedAccelerateApps()Ljava/util/List;

    move-result-object v0

    .line 211
    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getAcceleratableApps()Ljava/util/List;

    move-result-object v4

    if-eqz p1, :cond_5

    .line 214
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 215
    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-static {v2}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 221
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 224
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0, v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$400(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 233
    :cond_4
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$800(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 234
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 235
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->setOptiFlexEnabled(Z)V

    goto/16 :goto_a

    .line 238
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 239
    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-static {v3}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 241
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 244
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 245
    iget-object v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_8

    .line 247
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 248
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 250
    iget-object v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v0, v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$400(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_8

    .line 252
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 256
    :cond_9
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$800(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 258
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->setOptiFlexEnabled(Z)V

    goto/16 :goto_a

    .line 198
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_a

    move p1, v3

    goto :goto_5

    :cond_a
    move p1, v2

    :goto_5
    if-eqz p1, :cond_b

    .line 200
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->setOptiFlexAutoEnabled(Z)V

    goto/16 :goto_a

    .line 204
    :cond_b
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->setOptiFlexAutoEnabled(Z)V

    goto/16 :goto_a

    .line 146
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_c

    move v0, v3

    goto :goto_6

    :cond_c
    move v0, v2

    .line 147
    :goto_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 148
    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$700(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_12

    .line 151
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexAutoEnabled()Z

    move-result v5

    if-ne v5, v3, :cond_d

    .line 152
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->setOptiFlexAutoEnabled(Z)V

    .line 153
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$800(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_d
    if-eqz v0, :cond_e

    .line 157
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->checkApps(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 159
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$400(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    .line 162
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_a

    .line 167
    :cond_e
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->uncheckApps(Landroid/content/pm/ResolveInfo;)V

    .line 171
    :cond_f
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getSelectedAccelerateApps()Ljava/util/List;

    move-result-object v2

    .line 172
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 174
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 175
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    .line 179
    :cond_10
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_11

    .line 180
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 186
    :cond_11
    :goto_7
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$400(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    .line 190
    :cond_12
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 192
    iput v0, p1, Landroid/os/Message;->what:I

    .line 193
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 106
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexAutoEnabled()Z

    move-result p1

    if-ne p1, v3, :cond_17

    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexEnabled()Z

    move-result p1

    if-ne p1, v3, :cond_17

    .line 108
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$300(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$000(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->updateLastAutoModeList(Landroid/content/pm/PackageManager;Landroid/content/Context;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getSelectedAccelerateApps()Ljava/util/List;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getAcceleratableApps()Ljava/util/List;

    move-result-object v0

    .line 111
    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexAutoEnabled()Z

    move-result v4

    if-ne v4, v3, :cond_17

    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexEnabled()Z

    move-result v4

    if-ne v4, v3, :cond_17

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 114
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-virtual {v5}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-static {v4}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_13

    .line 116
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 117
    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 118
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v4, v6}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$400(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    goto :goto_8

    .line 121
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 122
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_15

    .line 124
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 125
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0, v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$400(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 129
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_9

    :pswitch_4
    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->mToast:Landroid/widget/Toast;

    goto :goto_a

    .line 96
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 97
    :cond_16
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$000(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$000(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->select_over_a_num:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->mToast:Landroid/widget/Toast;

    .line 98
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 99
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_17
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
