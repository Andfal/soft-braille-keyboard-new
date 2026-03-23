.class Lcom/nirenr/talkman/settings/SearchActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayListAdapter;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/nirenr/talkman/settings/SearchActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SearchActivity;Landroid/widget/ArrayListAdapter;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SearchActivity$1;->c:Lcom/nirenr/talkman/settings/SearchActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SearchActivity$1;->a:Landroid/widget/ArrayListAdapter;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/SearchActivity$1;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object v1, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->c:Lcom/nirenr/talkman/settings/SearchActivity;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SearchActivity;->a(Lcom/nirenr/talkman/settings/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->c:Lcom/nirenr/talkman/settings/SearchActivity;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SearchActivity;->c(Lcom/nirenr/talkman/settings/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->c:Lcom/nirenr/talkman/settings/SearchActivity;

    invoke-static {v4}, Lcom/nirenr/talkman/settings/SearchActivity;->d(Lcom/nirenr/talkman/settings/SearchActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->c:Lcom/nirenr/talkman/settings/SearchActivity;

    invoke-static {v10}, Lcom/nirenr/talkman/settings/SearchActivity;->b(Lcom/nirenr/talkman/settings/SearchActivity;)Ljava/util/HashMap;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    if-nez v10, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v11, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->c:Lcom/nirenr/talkman/settings/SearchActivity;

    invoke-static {v11}, Lcom/nirenr/talkman/settings/SearchActivity;->a(Lcom/nirenr/talkman/settings/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "__name"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, ">"

    const-string v14, ""

    const-string v15, ",\n"

    const/4 v6, 0x1

    if-nez v12, :cond_6

    array-length v12, v8

    if-le v12, v6, :cond_4

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v8

    if-le v10, v6, :cond_5

    move-object v10, v13

    goto :goto_2

    :cond_5
    move-object v10, v14

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    array-length v10, v8

    const/4 v11, 0x2

    if-le v10, v11, :cond_7

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    const/4 v10, 0x1

    :goto_4
    array-length v11, v8

    if-ge v10, v11, :cond_a

    aget-object v11, v8, v10

    invoke-static {v11}, Lcom/androlua/LuaResources;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v11, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->c:Lcom/nirenr/talkman/settings/SearchActivity;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v8

    sub-int/2addr v11, v6

    if-ne v10, v11, :cond_9

    move-object v11, v14

    goto :goto_5

    :cond_9
    move-object v11, v13

    :goto_5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    iget-object v6, v0, Lcom/nirenr/talkman/settings/SearchActivity$1;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
