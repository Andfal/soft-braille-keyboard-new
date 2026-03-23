.class Lcom/nirenr/talkman/settings/SoundSetting$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/widget/ArrayListAdapter;

.field final synthetic c:Lcom/nirenr/talkman/settings/SoundSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting;Landroid/widget/ListView;Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->c:Lcom/nirenr/talkman/settings/SoundSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->b:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->a:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->a:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->c:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-static {v4}, Lcom/nirenr/talkman/settings/SoundSetting;->a(Lcom/nirenr/talkman/settings/SoundSetting;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x64

    if-ge v4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "$1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "(\\.[a-zA-Z0-9]+)$"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->c:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-static {v7}, Lcom/nirenr/talkman/settings/SoundSetting;->a(Lcom/nirenr/talkman/settings/SoundSetting;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->c:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-static {v6}, Lcom/nirenr/talkman/settings/SoundSetting;->a(Lcom/nirenr/talkman/settings/SoundSetting;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/androlua/LuaUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->c:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-static {v5}, Lcom/nirenr/talkman/settings/SoundSetting;->a(Lcom/nirenr/talkman/settings/SoundSetting;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v7, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$3;->c:Lcom/nirenr/talkman/settings/SoundSetting;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    const v2, 0x7f0703f0

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const p2, 0x7f0703eb

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
