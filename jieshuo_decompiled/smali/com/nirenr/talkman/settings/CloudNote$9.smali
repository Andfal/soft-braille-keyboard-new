.class Lcom/nirenr/talkman/settings/CloudNote$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/CloudNote;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 4

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/CloudNote;->f(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/CloudNote;->a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/CloudNote;->c(Lcom/nirenr/talkman/settings/CloudNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/CloudNote;->c(Lcom/nirenr/talkman/settings/CloudNote;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->c(Lcom/nirenr/talkman/settings/CloudNote;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/CloudNote;->c(Lcom/nirenr/talkman/settings/CloudNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->b(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$9;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->b(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
