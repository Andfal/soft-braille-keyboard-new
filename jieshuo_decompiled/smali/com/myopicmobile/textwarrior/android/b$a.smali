.class Lcom/myopicmobile/textwarrior/android/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myopicmobile/textwarrior/android/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/myopicmobile/textwarrior/android/b;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/b;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/b;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p2}, Lcom/myopicmobile/textwarrior/android/c;->paste()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/b;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p2}, Lcom/myopicmobile/textwarrior/android/c;->copy()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/b;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p2}, Lcom/myopicmobile/textwarrior/android/c;->cut()V

    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/b;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->selectAll()V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    invoke-static {v0, p1}, Lcom/myopicmobile/textwarrior/android/b;->b(Lcom/myopicmobile/textwarrior/android/b;Landroid/view/ActionMode;)V

    const v0, 0x1040016

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/b;->a(Lcom/myopicmobile/textwarrior/android/b;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/b;->a(Lcom/myopicmobile/textwarrior/android/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x61

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/b;->a(Lcom/myopicmobile/textwarrior/android/b;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x1040003

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {p2, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x78

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/b;->a(Lcom/myopicmobile/textwarrior/android/b;)Landroid/content/Context;

    move-result-object v0

    const v4, 0x1040001

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x63

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/b;->a(Lcom/myopicmobile/textwarrior/android/b;)Landroid/content/Context;

    move-result-object v0

    const v4, 0x104000b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-interface {p2, v1, v4, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object p2

    const/16 v0, 0x76

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object p2

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v3

    nop

    :array_0
    .array-data 4
        0x101037e
        0x1010311
        0x1010312
        0x1010313
    .end array-data
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/b;->a:Lcom/myopicmobile/textwarrior/android/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/b$a;->a:Lcom/myopicmobile/textwarrior/android/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/myopicmobile/textwarrior/android/b;->b(Lcom/myopicmobile/textwarrior/android/b;Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
