.class public Lcom/myopicmobile/textwarrior/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/myopicmobile/textwarrior/android/c;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/b;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/b;->b:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic a(Lcom/myopicmobile/textwarrior/android/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/myopicmobile/textwarrior/android/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/myopicmobile/textwarrior/android/b;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/b;->c:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/b;->f()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/b;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b;->c:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b;->a:Lcom/myopicmobile/textwarrior/android/c;

    new-instance v1, Lcom/myopicmobile/textwarrior/android/b$a;

    invoke-direct {v1, p0}, Lcom/myopicmobile/textwarrior/android/b$a;-><init>(Lcom/myopicmobile/textwarrior/android/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/b;->c:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/b;->c:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method
