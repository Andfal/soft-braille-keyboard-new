.class Lcom/myopicmobile/textwarrior/android/a$b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ld2/g;

.field private c:Landroid/util/DisplayMetrics;

.field final synthetic d:Lcom/myopicmobile/textwarrior/android/a;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/a;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a$b;->d:Lcom/myopicmobile/textwarrior/android/a;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance p1, Ld2/g;

    invoke-direct {p1}, Ld2/g;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a$b;->b:Ld2/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a$b;->c:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static bridge synthetic a(Lcom/myopicmobile/textwarrior/android/a$b;)Ld2/g;
    .locals 0

    iget-object p0, p0, Lcom/myopicmobile/textwarrior/android/a$b;->b:Ld2/g;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a$b;->b:Ld2/g;

    invoke-virtual {v0}, Ld2/g;->c()V

    return-void
.end method

.method public c()I
    .locals 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/a$b;->a:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/a$b;->a:I

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a$b;->b:Ld2/g;

    invoke-virtual {v0}, Ld2/g;->a()V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/myopicmobile/textwarrior/android/a$b$a;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/a$b$a;-><init>(Lcom/myopicmobile/textwarrior/android/a$b;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/a$b;->d:Lcom/myopicmobile/textwarrior/android/a;

    invoke-static {p2}, Lcom/myopicmobile/textwarrior/android/a;->c(Lcom/myopicmobile/textwarrior/android/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
