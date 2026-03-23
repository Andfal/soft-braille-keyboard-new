.class Lh2/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/s;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/s;


# direct methods
.method constructor <init>(Lh2/s;)V
    .locals 0

    iput-object p1, p0, Lh2/s$d;->a:Lh2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lh2/s$d;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->c(Lh2/s;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f07062f

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object p1, p0, Lh2/s$d;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->e(Lh2/s;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v3, p0, Lh2/s$d;->a:Lh2/s;

    invoke-static {v3}, Lh2/s;->b(Lh2/s;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/s$d;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->j(Lh2/s;)V

    :goto_1
    iget-object p1, p0, Lh2/s$d;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->b(Lh2/s;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lh2/s$d;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->b(Lh2/s;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v2, p1

    if-gez v2, :cond_1

    iget-object p1, p0, Lh2/s$d;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->e(Lh2/s;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
