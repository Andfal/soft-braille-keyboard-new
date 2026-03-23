.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;

    iput p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5$1;->a:I

    if-gtz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lcom/nirenr/talkman/h;->b:Z

    :cond_1
    return v0
.end method
