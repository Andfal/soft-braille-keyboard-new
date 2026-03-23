.class Lcom/nirenr/talkman/settings/GestureEdit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureEdit;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GestureEdit;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureEdit$1;->a:Lcom/nirenr/talkman/settings/GestureEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureEdit$1;->a:Lcom/nirenr/talkman/settings/GestureEdit;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/GestureEdit;->a(Lcom/nirenr/talkman/settings/GestureEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
