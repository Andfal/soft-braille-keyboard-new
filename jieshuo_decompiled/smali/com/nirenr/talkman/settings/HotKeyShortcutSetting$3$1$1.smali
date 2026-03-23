.class Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    iget-object v0, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->b:[Ljava/lang/String;

    iget p2, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->d(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    iget v3, v3, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->a:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v0, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->c:Landroid/widget/ArrayListAdapter;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->b:[Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayListAdapter;->addAll([Ljava/lang/Object;)V

    :try_start_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v0, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->d:Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->a(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;)[Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;->a:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    iget v1, v1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->a:I

    aget-object p2, p2, v1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
