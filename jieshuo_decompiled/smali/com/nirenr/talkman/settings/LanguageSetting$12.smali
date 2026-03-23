.class Lcom/nirenr/talkman/settings/LanguageSetting$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/LanguageSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LanguageSetting;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    iput p2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    iget v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget-object v0, v0, v1

    const-string v1, "date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    iget v2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    iget v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/LanguageSetting;->c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    iget v2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    iget v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/LanguageSetting;->c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/LanguageSetting;->c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-virtual {v0}, Landroid/app/BaseActivity;->getSuperResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/androlua/LuaResources;->stringIds:[I

    iget v2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/LanguageSetting;->a(Lcom/nirenr/talkman/settings/LanguageSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->a:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->a(Lcom/nirenr/talkman/settings/LanguageSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$12;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/LanguageSetting;->e(Lcom/nirenr/talkman/settings/LanguageSetting;Z)V

    return-void
.end method
