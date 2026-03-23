.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;->a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;->a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;

    iget-object v1, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->a:[Ljava/lang/String;

    iget v0, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->a:I

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;->a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;

    iget-object v2, v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v3, v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->b:Ljava/io/File;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->a:[Ljava/lang/String;

    iget v1, v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->a:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;->a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->b:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;->a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;->a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iget-object v1, p1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->d:Landroid/preference/Preference;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->b:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;Ljava/io/File;)V

    return-void
.end method
