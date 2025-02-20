using System;
using System.Drawing;
using System.Windows.Forms;

public class BatteryIcon : ProgressBar
{
    public BatteryIcon()
    {
        this.SetStyle(ControlStyles.UserPaint, true);
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        Rectangle rect = this.ClientRectangle;
        Graphics g = e.Graphics;

        ProgressBarRenderer.DrawHorizontalBar(g, rect);
        rect.Inflate(-3, -3);

        if (this.Value > 0)
        {
            // Determine the color based on the current value
            Color color;
            if (this.Value > 75)
                color = Color.Green;
            else if (this.Value > 35)
                color = Color.Orange;
            else
                color = Color.Red;

            using (SolidBrush brush = new SolidBrush(color))
            {
                // Calculate the width of the filled area
                double fillWidth = (double)this.Value / this.Maximum * rect.Width;
                rect.Width = (int)fillWidth;
                g.FillRectangle(brush, rect);
            }
        }
    }
}
