.class Lcom/nirenr/talkman/settings/LabelSetting$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LabelSetting;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/LabelSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LabelSetting;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->b:Lcom/nirenr/talkman/settings/LabelSetting;

    iput p2, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->b:Lcom/nirenr/talkman/settings/LabelSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/LabelSetting;->b(Lcom/nirenr/talkman/settings/LabelSetting;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->b:Lcom/nirenr/talkman/settings/LabelSetting;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/LabelSetting;->a(Lcom/nirenr/talkman/settings/LabelSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->b:Lcom/nirenr/talkman/settings/LabelSetting;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, ""

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f0703bb

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->b:Lcom/nirenr/talkman/settings/LabelSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/LabelSetting;->b(Lcom/nirenr/talkman/settings/LabelSetting;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/nirenr/talkman/settings/LabelSetting$2$1;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/LabelSetting$2$1;-><init>(Lcom/nirenr/talkman/settings/LabelSetting$2;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lk2/p;

    invoke-direct {p1}, Lk2/p;-><init>()V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->b:Lcom/nirenr/talkman/settings/LabelSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LabelSetting;->a(Lcom/nirenr/talkman/settings/LabelSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LabelSetting$2;->b:Lcom/nirenr/talkman/settings/LabelSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LabelSetting;->a(Lcom/nirenr/talkman/settings/LabelSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    invoke-static {}, Lcom/nirenr/talkman/o;->l()V

    invoke-static {}, Lcom/nirenr/talkman/o;->k()V

    return-void
.end method
