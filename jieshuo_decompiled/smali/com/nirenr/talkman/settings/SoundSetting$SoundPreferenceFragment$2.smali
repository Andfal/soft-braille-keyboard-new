.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/OnAccessibilityFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityFocused(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->e(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->e(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->e(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/nirenr/talkman/h;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v1, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->f(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->f(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/io/File;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/nirenr/talkman/h;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v3}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->f(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/io/File;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/nirenr/talkman/h;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v3}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setOnAccessibilityFocusedListener(Lcom/nirenr/talkman/OnAccessibilityFocusedListener;)V

    :cond_4
    return-void
.end method
