.class Lh2/s$h;
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

    iput-object p1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->a(Lh2/s;)Landroid/app/Dialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {v1}, Lh2/s;->c(Lh2/s;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070629

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {v1}, Lh2/s;->c(Lh2/s;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070625

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->c(Lh2/s;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object p1, p0, Lh2/s$h;->a:Lh2/s;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lh2/s;->g(Lh2/s;I)V

    iget-object p1, p0, Lh2/s$h;->a:Lh2/s;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lh2/s;->d(Lh2/s;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lh2/s;->f(Lh2/s;[Ljava/lang/String;)V

    iget-object p1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->e(Lh2/s;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object p1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->e(Lh2/s;)Landroid/widget/GridView;

    move-result-object p1

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {v1}, Lh2/s;->c(Lh2/s;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lh2/s$h;->a:Lh2/s;

    invoke-static {v2}, Lh2/s;->b(Lh2/s;)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
