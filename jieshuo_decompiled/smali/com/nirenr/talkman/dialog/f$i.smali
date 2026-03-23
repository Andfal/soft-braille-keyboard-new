.class Lcom/nirenr/talkman/dialog/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/f;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/f;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/f$i;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f$i;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/f;->g(Lcom/nirenr/talkman/dialog/f;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f$i;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/f;->g(Lcom/nirenr/talkman/dialog/f;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/f$i;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/f;->c(Lcom/nirenr/talkman/dialog/f;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f$i;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$i;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f070374

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method
