.class Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iput p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->a:[Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    const v0, 0x7f0701f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    const v0, 0x7f0701f1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    const v0, 0x7f0701fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    const v0, 0x7f0701fd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    const v0, 0x7f070032

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lk2/p;

    invoke-direct {p1}, Lk2/p;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p1, Lcom/nirenr/talkman/dialog/FileDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    new-instance v2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$2;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$2;-><init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;)V

    invoke-direct {p1, v1, v2, p2, v0}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->b:[Ljava/lang/String;

    iget v0, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->d(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->a:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->c:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->c:Landroid/widget/ArrayListAdapter;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->b:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayListAdapter;->addAll([Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->d:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->a(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;)[Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->a:I

    aget-object p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance p1, Lcom/nirenr/talkman/dialog/FileDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;->b:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    new-instance v1, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1$1;-><init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;)V

    invoke-direct {p1, v0, v1, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    return-void
.end method
