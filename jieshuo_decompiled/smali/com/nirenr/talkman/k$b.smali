.class Lcom/nirenr/talkman/k$b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field final synthetic b:Lcom/nirenr/talkman/k;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/k;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/nirenr/talkman/k$b;->b:Lcom/nirenr/talkman/k;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nirenr/talkman/k$c;

    invoke-direct {v0, p1, p2}, Lcom/nirenr/talkman/k$c;-><init>(Lcom/nirenr/talkman/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/k$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p2, "\u5173\u95ed"

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, 0x440000ff

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/nirenr/talkman/k;->d(Lcom/nirenr/talkman/k;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v2, 0x88

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p2, Lcom/nirenr/talkman/k$b$a;

    invoke-direct {p2, p0, p1}, Lcom/nirenr/talkman/k$b$a;-><init>(Lcom/nirenr/talkman/k$b;Lcom/nirenr/talkman/k;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {p1, v1}, Lcom/nirenr/talkman/k;->e(Lcom/nirenr/talkman/k;F)I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {p2, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
