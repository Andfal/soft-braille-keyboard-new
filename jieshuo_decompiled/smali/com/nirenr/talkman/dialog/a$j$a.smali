.class Lcom/nirenr/talkman/dialog/a$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a$j;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/a$j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/a$j;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$j$a;->a:Lcom/nirenr/talkman/dialog/a$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j$a;->a:Lcom/nirenr/talkman/dialog/a$j;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/a$j;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$j$a;->a:Lcom/nirenr/talkman/dialog/a$j;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a$j;->b(Lcom/nirenr/talkman/dialog/a$j;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j$a;->a:Lcom/nirenr/talkman/dialog/a$j;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a$j;->b(Lcom/nirenr/talkman/dialog/a$j;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
